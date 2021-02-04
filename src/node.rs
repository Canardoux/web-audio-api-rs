//! AudioNode

use std::f64::consts::PI;
use std::fmt::Debug;
use std::sync::atomic::{AtomicU32, AtomicU64, Ordering};
use std::sync::Arc;

use crate::context::{AsBaseAudioContext, BaseAudioContext};
use crate::graph::Render;

/// This interface represents audio sources, the audio destination, and intermediate processing
/// modules. These modules can be connected together to form processing graphs for rendering audio
/// to the audio hardware. Each node can have inputs and/or outputs.
pub trait AudioNode {
    fn id(&self) -> u64;
    fn context(&self) -> &BaseAudioContext;

    fn connect<'a>(&self, dest: &'a dyn AudioNode) -> &'a dyn AudioNode {
        if !std::ptr::eq(self.context(), dest.context()) {
            panic!("attempting to connect nodes from different contexts");
        }

        self.context().connect(self.id(), dest.id(), 0);

        dest
    }
}

/// Helper struct to start and stop audio streams
#[derive(Clone, Debug)]
pub struct Scheduler {
    start: Arc<AtomicU64>,
    stop: Arc<AtomicU64>,
}

impl Scheduler {
    pub fn new() -> Self {
        Self {
            start: Arc::new(AtomicU64::new(u64::MAX)),
            stop: Arc::new(AtomicU64::new(u64::MAX)),
        }
    }

    pub fn is_active(&self, frame: u64) -> bool {
        frame >= self.start.load(Ordering::SeqCst) && frame < self.stop.load(Ordering::SeqCst)
    }

    pub fn start(&self, start: u64) {
        self.start.store(start, Ordering::SeqCst);
    }

    pub fn stop(&self, stop: u64) {
        self.stop.store(stop, Ordering::SeqCst);
    }
}

/// Trait for types that have a Scheduler
pub trait Scheduled {
    fn scheduler(&self) -> &Scheduler;

    fn is_active(&self, frame: u64) -> bool {
        self.scheduler().is_active(frame)
    }

    fn start(&self, start: u64) {
        self.scheduler().start(start)
    }

    fn stop(&self, stop: u64) {
        self.scheduler().stop(stop)
    }
}

/// Interface of source nodes, controlling start and stop times.
/// The node will emit silence before it is started, and after it has ended.
pub trait AudioScheduledSourceNode: AudioNode + Scheduled {
    /// Schedules a sound to playback at an exact time.
    fn start_at(&self, timestamp: f64) {
        let frame = (timestamp * self.context().sample_rate() as f64) as u64;
        self.scheduler().start(frame);
    }
    /// Schedules a sound to stop playback at an exact time.
    fn stop_at(&self, timestamp: f64) {
        let frame = (timestamp * self.context().sample_rate() as f64) as u64;
        self.scheduler().stop(frame);
    }
    /// Play immediately
    fn start(&self) {
        self.start_at(0.);
    }
    /// Stop immediately
    fn stop(&self) {
        self.stop_at(0.);
    }
}

/// Options for constructing an OscillatorNode
pub struct OscillatorOptions {
    pub type_: OscillatorType,
    pub frequency: u32,
}

impl Default for OscillatorOptions {
    fn default() -> Self {
        Self {
            type_: OscillatorType::default(),
            frequency: 440,
        }
    }
}

/// Waveform of an oscillator
#[derive(Copy, Clone)]
pub enum OscillatorType {
    Sine,
    Square,
    Sawtooth,
    Triangle,
    Custom,
}

impl Default for OscillatorType {
    fn default() -> Self {
        OscillatorType::Sine
    }
}

impl From<u32> for OscillatorType {
    fn from(i: u32) -> Self {
        match i {
            0 => OscillatorType::Sine,
            1 => OscillatorType::Square,
            2 => OscillatorType::Sawtooth,
            3 => OscillatorType::Triangle,
            4 => OscillatorType::Custom,
            _ => unreachable!(),
        }
    }
}

/// Audio source generating a periodic waveform
pub struct OscillatorNode<'a> {
    pub(crate) context: &'a BaseAudioContext,
    pub(crate) id: u64,
    pub(crate) frequency: Arc<AtomicU32>,
    pub(crate) type_: Arc<AtomicU32>,
    pub(crate) scheduler: Scheduler,
}

impl<'a> Scheduled for OscillatorNode<'a> {
    fn scheduler(&self) -> &Scheduler {
        &self.scheduler
    }
}

impl<'a> AudioScheduledSourceNode for OscillatorNode<'a> {}

impl<'a> AudioNode for OscillatorNode<'a> {
    fn context(&self) -> &BaseAudioContext {
        self.context
    }

    fn id(&self) -> u64 {
        self.id
    }
}

impl<'a> OscillatorNode<'a> {
    pub fn new<C: AsBaseAudioContext>(context: &'a C, options: OscillatorOptions) -> Self {
        context.base().create_oscillator_with(options)
    }

    pub fn frequency(&self) -> u32 {
        self.frequency.load(Ordering::SeqCst)
    }

    pub fn set_frequency(&self, freq: u32) {
        self.frequency.store(freq, Ordering::SeqCst);
    }

    pub fn type_(&self) -> OscillatorType {
        self.type_.load(Ordering::SeqCst).into()
    }

    pub fn set_type(&self, type_: OscillatorType) {
        self.type_.store(type_ as u32, Ordering::SeqCst);
    }
}

#[derive(Debug)]
pub(crate) struct OscillatorRenderer {
    pub frequency: Arc<AtomicU32>,
    pub type_: Arc<AtomicU32>,
    pub scheduler: Scheduler,
}

impl Scheduled for OscillatorRenderer {
    fn scheduler(&self) -> &Scheduler {
        &self.scheduler
    }
}

impl Render for OscillatorRenderer {
    fn process(
        &mut self,
        _inputs: &[&[f32]],
        output: &mut [f32],
        timestamp: f64,
        sample_rate: u32,
    ) {
        let frame = (timestamp * sample_rate as f64) as u64;

        // todo, sub-quantum start/stop
        if !self.is_active(frame) {
            output.iter_mut().for_each(|o| *o = 0.);
            return;
        }

        let freq = self.frequency.load(Ordering::SeqCst) as f64;
        let type_ = self.type_.load(Ordering::SeqCst).into();

        let ts = (0..output.len()).map(move |i| timestamp + i as f64 / sample_rate as f64);
        let io = ts.zip(output.iter_mut());

        match type_ {
            OscillatorType::Sine => io.for_each(|(i, o)| *o = (2. * PI * freq * i).sin() as f32),
            OscillatorType::Square => {
                io.for_each(|(i, o)| *o = if (freq * i).fract() < 0.5 { 1. } else { -1. })
            }
            OscillatorType::Sawtooth => {
                io.for_each(|(i, o)| *o = 2. * ((freq * i).fract() - 0.5) as f32)
            }
            _ => todo!(),
        }
    }
}

/// Representing the final audio destination and is what the user will ultimately hear.
pub struct DestinationNode<'a> {
    pub(crate) context: &'a BaseAudioContext,
    pub(crate) id: u64,
    pub(crate) channels: usize,
}

#[derive(Debug)]
pub(crate) struct DestinationRenderer {
    pub channels: usize,
}

impl Render for DestinationRenderer {
    fn process(
        &mut self,
        inputs: &[&[f32]],
        output: &mut [f32],
        _timestamp: f64,
        _sample_rate: u32,
    ) {
        // clear slice, it may be re-used
        for d in output.iter_mut() {
            *d = 0.;
        }

        // sum signal from all child nodes
        for input in inputs.iter() {
            for (i, o) in input.iter().zip(output.iter_mut()) {
                *o += i;
            }
        }
    }
}

impl<'a> AudioNode for DestinationNode<'a> {
    fn context(&self) -> &BaseAudioContext {
        self.context
    }

    fn id(&self) -> u64 {
        self.id
    }
}

/// Options for constructing a GainNode
pub struct GainOptions {
    pub gain: f32,
}

impl Default for GainOptions {
    fn default() -> Self {
        Self { gain: 1. }
    }
}

/// AudioNode for volume control
pub struct GainNode<'a> {
    pub(crate) context: &'a BaseAudioContext,
    pub(crate) id: u64,
    pub(crate) gain: Arc<AtomicU32>,
}

impl<'a> AudioNode for GainNode<'a> {
    fn context(&self) -> &BaseAudioContext {
        self.context
    }

    fn id(&self) -> u64 {
        self.id
    }
}

impl<'a> GainNode<'a> {
    pub fn new<C: AsBaseAudioContext>(context: &'a C, options: GainOptions) -> Self {
        context.base().create_gain_with(options)
    }

    pub fn gain(&self) -> f32 {
        self.gain.load(Ordering::SeqCst) as f32 / 100.
    }

    pub fn set_gain(&self, gain: f32) {
        self.gain.store((gain * 100.) as u32, Ordering::SeqCst);
    }
}

#[derive(Debug)]
pub(crate) struct GainRenderer {
    pub gain: Arc<AtomicU32>,
}

impl Render for GainRenderer {
    fn process(
        &mut self,
        inputs: &[&[f32]],
        output: &mut [f32],
        _timestamp: f64,
        _sample_rate: u32,
    ) {
        let gain = self.gain.load(Ordering::SeqCst) as f32 / 100.;
        inputs[0]
            .iter()
            .zip(output.iter_mut())
            .for_each(|(value, dest)| *dest = value * gain);
    }
}

/// Options for constructing a DelayNode
#[derive(Default)]
pub struct DelayOptions {
    // todo: actually delay by time
    pub render_quanta: u32,
}

/// Node that delays the incoming audio signal by a certain amount
pub struct DelayNode<'a> {
    pub(crate) context: &'a BaseAudioContext,
    pub(crate) id: u64,
    pub(crate) render_quanta: Arc<AtomicU32>,
}

impl<'a> AudioNode for DelayNode<'a> {
    fn context(&self) -> &BaseAudioContext {
        self.context
    }

    fn id(&self) -> u64 {
        self.id
    }
}

impl<'a> DelayNode<'a> {
    pub fn new<C: AsBaseAudioContext>(context: &'a C, options: DelayOptions) -> Self {
        context.base().create_delay_with(options)
    }

    pub fn render_quanta(&self) -> u32 {
        self.render_quanta.load(Ordering::SeqCst)
    }

    pub fn set_render_quanta(&self, render_quanta: u32) {
        self.render_quanta.store(render_quanta, Ordering::SeqCst);
    }
}

#[derive(Debug)]
pub(crate) struct DelayRenderer {
    pub render_quanta: Arc<AtomicU32>,
    pub delay_buffer: Vec<f32>,
    pub index: usize,
}

impl Render for DelayRenderer {
    fn process(
        &mut self,
        inputs: &[&[f32]],
        output: &mut [f32],
        _timestamp: f64,
        _sample_rate: u32,
    ) {
        let quanta = self.render_quanta.load(Ordering::SeqCst) as usize;
        let size = crate::BUFFER_SIZE as usize;

        if quanta == 0 {
            // when no delay is set, simply copy input to output
            output.copy_from_slice(inputs[0]);
        } else if self.delay_buffer.len() < quanta * size {
            // still filling buffer
            self.delay_buffer.extend_from_slice(inputs[0]);
            // clear slice, it may be re-used
            for d in output.iter_mut() {
                *d = 0.;
            }
        } else {
            let start = self.index * size;
            let end = start + size;

            // copy delayed audio to output
            output.copy_from_slice(&self.delay_buffer[start..end]);
            // store current input in place
            self.delay_buffer[start..end].copy_from_slice(inputs[0]);

            // progress index
            self.index = (self.index + 1) % quanta;
        }
    }
}