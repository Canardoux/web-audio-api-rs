/*
 * Copyright 2024 Canardoux.
 *
 * This file is part of the τ Project.
 *
 * τ (Tau) is free software: you can redistribute it and/or modify
 * it under the terms of the Mozilla Public License version 2 (MPL2.0),
 * as published by the Mozilla organization.
 *
 * τ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * MPL General Public License for more details.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

//use flutter_rust_bridge::DartFnFuture;
use trace::trace;
use std::cell::Cell;
use log::{info as i, trace as t, warn as w, error as e, debug as d, LevelFilter};
//use lazy_static::lazy_static;
//use logger::LogSink;

//#[flutter_rust_bridge::frb(sync)] // Synchronous mode for simplicity of the demouse std::sync::Once;

use simple_log::*;
use flutter_logger::logger::log;
// -------------------------  LOGGER  --------------------------

thread_local! {
        static DEPTH: Cell<usize> = Cell::new(0);
    }

// -----------------------  TauCore  ----------------------

//type TDartCallbackLog = impl Fn(i32, String) -> DartFnFuture<bool> ;
//type TCallbackLog = impl Fn(i32, &str) ;

flutter_logger::flutter_logger_init!(trace_logger, LevelFilter::Trace);

/*  !!! Actually not used
const I_TO_LEVEL: [Level;11] =
[
    Level::Trace, // all
    Level::Trace, // verbose
    Level::Trace, // trace
    Level::Debug, // debug
    Level::Info,  // info
    Level::Warn,  // warning
    Level::Error, // error
    Level::Error, // wtf
    Level::Error, // fatal
    Level::Error, // nothing
    Level::Error  // off
];
*/
const I_TO_FILTER: [LevelFilter;11] =
[
    LevelFilter::Trace, // all
    LevelFilter::Trace, // verbose
    LevelFilter::Trace, // trace
    LevelFilter::Debug, // debug
    LevelFilter::Info,  // info
    LevelFilter::Warn,  // warning
    LevelFilter::Error, // error
    LevelFilter::Error, // wtf
    LevelFilter::Error, // fatal
    LevelFilter::Off,   // nothing
    LevelFilter::Off    // off
];

pub async fn init_tau_core()  -> bool
{
        //dart_callback_log(level, "TEST".to_string()).await;
        t!("titi");
        i!(target: "yak_events", "Commencing yak shaving for yak:?");
        d!(target: "zozo", "Deug!!!");
        e!("An error!!!");
        t!("etc..");
        w!("a warning");
        log(Level::Trace, "boubou", "hello I am a log from Rust");
        //CALLBACK_LOG = &dart_callback_log;
        //CALLBACK_LOG( 2, "ANOTHER TEST".to_string()).await;
        return true;
}

// --------------------------------------------------
use web_audio_api::context::{
    AudioContext, AudioContextLatencyCategory, AudioContextOptions, BaseAudioContext,
};

use web_audio_api::node::{AudioNode, AudioScheduledSourceNode /*, OscillatorNode*/};


#[trace (prefix_enter="-> ", prefix_exit="<- ", logging)]
pub fn rust_set_log_level(level : i32)
{
    log::set_max_level(I_TO_FILTER[level as usize]);
}

#[trace (prefix_enter="-> ", prefix_exit="<- ", logging)]
pub fn greet(name: String) -> String {
       log(Level::Trace, "boubou", "hello I am a log from Rust");

        t!("titi");
        info!(target: "yak_events", "An Info, Commencing yak shaving for yak:?");
        d!(target: "zozo", "Debug!!!");
        e!("An error!!!");
        log::trace!("Trace etc..");
        w!("a warning");
        //rust_set_log_level(3);

        let latency_hint = match std::env::var("WEB_AUDIO_LATENCY").as_deref() {
        Ok("playback") => AudioContextLatencyCategory::Playback,
        _ => AudioContextLatencyCategory::default(),
        };

        let context = AudioContext::new(AudioContextOptions
        {
            latency_hint,
            ..AudioContextOptions::default()
        });

        // pipe 2 oscillator into two panner, one on each side of the stereo image
        // inverse the direction of the panning every 4 second

        // create a stereo panner
        let panner_1 = context.create_stereo_panner();
        let mut pan_1 = -1.;
        panner_1.set_channel_count(1);
        panner_1.connect(&context.destination());
        panner_1.pan().set_value(pan_1);

        // create an oscillator
        let mut osc_1 = context.create_oscillator();
        osc_1.connect(&panner_1);
        osc_1.frequency().set_value(200.);
        osc_1.start();

        // create a stereo panner for mono input
        let panner_2 = context.create_stereo_panner();
        let mut pan_2 = 1.;
        panner_2.set_channel_count(1);
        panner_2.connect(&context.destination());
        panner_2.pan().set_value(pan_2);

        // create an oscillator
        let mut osc_2 = context.create_oscillator();
        osc_2.connect(&panner_2);
        osc_2.frequency().set_value(300.);
        osc_2.start();

        std::thread::sleep(std::time::Duration::from_secs(4));

        let mut i = 0;

        while i < 3
        {
                i += 1;
                // reverse the stereo image
                let now = context.current_time();

                panner_1.pan().set_value_at_time(pan_1, now);
                pan_1 = if pan_1 == 1. { -1. } else { 1. };
                panner_1.pan().linear_ramp_to_value_at_time(pan_1, now + 1.);

                panner_2.pan().set_value_at_time(pan_2, now);
                pan_2 = if pan_2 == 1. { -1. } else { 1. };
                panner_2.pan().linear_ramp_to_value_at_time(pan_2, now + 1.);

                std::thread::sleep(std::time::Duration::from_secs(4));
        }
        osc_1.stop();
        osc_2.stop();

        format!("Bonjour, {name}!")
}

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}
