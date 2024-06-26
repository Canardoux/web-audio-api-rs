// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../capacity.dart';
import '../media_streams.dart';
import '../node/media_element_source.dart';
import '../node/media_stream_destination.dart';
import '../node/media_stream_source.dart';
import '../node/media_stream_track_source.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioContext>>
@sealed
class AudioContext extends RustOpaque {
  AudioContext.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  AudioContext.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_AudioContext,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioContext,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioContextPtr,
  );

  /// This represents the number of seconds of processing latency incurred by
  /// the `AudioContext` passing the audio from the `AudioDestinationNode`
  /// to the audio subsystem.
  Future<double> baseLatency({dynamic hint}) => RustLib.instance.api
      .crateApiContextOnlineAudioContextBaseLatency(that: this, hint: hint);

  /// Unset the callback to run when the audio sink has changed
  Future<void> clearOnsinkchange({dynamic hint}) =>
      RustLib.instance.api.crateApiContextOnlineAudioContextClearOnsinkchange(
          that: this, hint: hint);

  /// Closes the `AudioContext`, releasing the system resources being used.
  ///
  /// This will not automatically release all `AudioContext`-created objects, but will suspend
  /// the progression of the currentTime, and stop processing audio data.
  ///
  /// # Panics
  ///
  /// Will panic when this function is called multiple times
  Future<void> close({dynamic hint}) => RustLib.instance.api
      .crateApiContextOnlineAudioContextClose(that: this, hint: hint);

  /// Closes the `AudioContext`, releasing the system resources being used.
  ///
  /// This will not automatically release all `AudioContext`-created objects, but will suspend
  /// the progression of the currentTime, and stop processing audio data.
  ///
  /// This function operates synchronously and blocks the current thread until the audio thread
  /// has stopped processing.
  ///
  /// # Panics
  ///
  /// Will panic when this function is called multiple times
  Future<void> closeSync({dynamic hint}) => RustLib.instance.api
      .crateApiContextOnlineAudioContextCloseSync(that: this, hint: hint);

  /// Creates a [`MediaElementAudioSourceNode`](node::MediaElementAudioSourceNode) from a
  /// [`MediaElement`]
  Future<MediaElementAudioSourceNode> createMediaElementSource(
          {required MediaElement mediaElement, dynamic hint}) =>
      RustLib.instance.api
          .crateApiContextOnlineAudioContextCreateMediaElementSource(
              that: this, mediaElement: mediaElement, hint: hint);

  /// Creates a [`MediaStreamAudioDestinationNode`](node::MediaStreamAudioDestinationNode)
  Future<MediaStreamAudioDestinationNode> createMediaStreamDestination(
          {dynamic hint}) =>
      RustLib.instance.api
          .crateApiContextOnlineAudioContextCreateMediaStreamDestination(
              that: this, hint: hint);

  /// Creates a [`MediaStreamAudioSourceNode`](node::MediaStreamAudioSourceNode) from a
  /// [`MediaStream`]
  Future<MediaStreamAudioSourceNode> createMediaStreamSource(
          {required MediaStream media, dynamic hint}) =>
      RustLib.instance.api
          .crateApiContextOnlineAudioContextCreateMediaStreamSource(
              that: this, media: media, hint: hint);

  /// Creates a [`MediaStreamTrackAudioSourceNode`](node::MediaStreamTrackAudioSourceNode) from a
  /// [`MediaStreamTrack`]
  Future<MediaStreamTrackAudioSourceNode> createMediaStreamTrackSource(
          {required MediaStreamTrack media, dynamic hint}) =>
      RustLib.instance.api
          .crateApiContextOnlineAudioContextCreateMediaStreamTrackSource(
              that: this, media: media, hint: hint);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  /// Creates and returns a new `AudioContext` object.
  ///
  /// This will play live audio on the default output device.
  ///
  /// ```no_run
  /// use web_audio_api::context::{AudioContext, AudioContextOptions};
  ///
  /// // Request a sample rate of 44.1 kHz and default latency (buffer size 128, if available)
  /// let opts = AudioContextOptions {
  ///     sample_rate: Some(44100.),
  ///     ..AudioContextOptions::default()
  /// };
  ///
  /// // Setup the audio context that will emit to your speakers
  /// let context = AudioContext::new(opts);
  ///
  /// // Alternatively, use the default constructor to get the best settings for your hardware
  /// // let context = AudioContext::default();
  /// ```
  ///
  /// # Panics
  ///
  /// The `AudioContext` constructor will panic when an invalid `sinkId` is provided in the
  /// `AudioContextOptions`. In a future version, a `try_new` constructor will be introduced that
  /// never panics.
  static Future<AudioContext> newInstance(
          {required AudioContextOptions options, dynamic hint}) =>
      RustLib.instance.api
          .crateApiContextOnlineAudioContextNew(options: options, hint: hint);

  /// The estimation in seconds of audio output latency, i.e., the interval
  /// between the time the UA requests the host system to play a buffer and
  /// the time at which the first sample in the buffer is actually processed
  /// by the audio output device.
  Future<double> outputLatency({dynamic hint}) => RustLib.instance.api
      .crateApiContextOnlineAudioContextOutputLatency(that: this, hint: hint);

  /// Returns an [`AudioRenderCapacity`] instance associated with an AudioContext.
  Future<AudioRenderCapacity> renderCapacity({dynamic hint}) => RustLib
      .instance.api
      .crateApiContextOnlineAudioContextRenderCapacity(that: this, hint: hint);

  /// Resumes the progression of time in an audio context that has previously been
  /// suspended/paused.
  ///
  /// # Panics
  ///
  /// Will panic if:
  ///
  /// * The audio device is not available
  /// * For a `BackendSpecificError`
  Future<void> resume({dynamic hint}) => RustLib.instance.api
      .crateApiContextOnlineAudioContextResume(that: this, hint: hint);

  /// Resumes the progression of time in an audio context that has previously been
  /// suspended/paused.
  ///
  /// This function operates synchronously and blocks the current thread until the audio thread
  /// has started processing again.
  ///
  /// # Panics
  ///
  /// Will panic if:
  ///
  /// * The audio device is not available
  /// * For a `BackendSpecificError`
  Future<void> resumeSync({dynamic hint}) => RustLib.instance.api
      .crateApiContextOnlineAudioContextResumeSync(that: this, hint: hint);

  Future<void> runDiagnostics({required F callback, dynamic hint}) =>
      RustLib.instance.api.crateApiContextOnlineAudioContextRunDiagnostics(
          that: this, callback: callback, hint: hint);

  /// Register callback to run when the audio sink has changed
  ///
  /// Only a single event handler is active at any time. Calling this method multiple times will
  /// override the previous event handler.
  Future<void> setOnsinkchange({required F callback, dynamic hint}) =>
      RustLib.instance.api.crateApiContextOnlineAudioContextSetOnsinkchange(
          that: this, callback: callback, hint: hint);

  /// Update the current audio output device.
  ///
  /// The provided `sink_id` string must match a device name `enumerate_devices_sync`.
  ///
  /// Supplying `"none"` for the `sink_id` will process the audio graph without playing through an
  /// audio output device.
  ///
  /// This function operates synchronously and might block the current thread. An async version
  /// is currently not implemented.
  Future<void> setSinkIdSync({required String sinkId, dynamic hint}) =>
      RustLib.instance.api.crateApiContextOnlineAudioContextSetSinkIdSync(
          that: this, sinkId: sinkId, hint: hint);

  /// Identifier or the information of the current audio output device.
  ///
  /// The initial value is `""`, which means the default audio output device.
  Future<String> sinkId({dynamic hint}) => RustLib.instance.api
      .crateApiContextOnlineAudioContextSinkId(that: this, hint: hint);

  /// Suspends the progression of time in the audio context.
  ///
  /// This will temporarily halt audio hardware access and reducing CPU/battery usage in the
  /// process.
  ///
  /// # Panics
  ///
  /// Will panic if:
  ///
  /// * The audio device is not available
  /// * For a `BackendSpecificError`
  Future<void> suspend({dynamic hint}) => RustLib.instance.api
      .crateApiContextOnlineAudioContextSuspend(that: this, hint: hint);

  /// Suspends the progression of time in the audio context.
  ///
  /// This will temporarily halt audio hardware access and reducing CPU/battery usage in the
  /// process.
  ///
  /// This function operates synchronously and blocks the current thread until the audio thread
  /// has stopped processing.
  ///
  /// # Panics
  ///
  /// Will panic if:
  ///
  /// * The audio device is not available
  /// * For a `BackendSpecificError`
  Future<void> suspendSync({dynamic hint}) => RustLib.instance.api
      .crateApiContextOnlineAudioContextSuspendSync(that: this, hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioContextLatencyCategory>>
@sealed
class AudioContextLatencyCategory extends RustOpaque {
  AudioContextLatencyCategory.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  AudioContextLatencyCategory.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_AudioContextLatencyCategory,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_AudioContextLatencyCategory,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_AudioContextLatencyCategoryPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioContextOptions>>
@sealed
class AudioContextOptions extends RustOpaque {
  AudioContextOptions.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  AudioContextOptions.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_AudioContextOptions,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioContextOptions,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioContextOptionsPtr,
  );

  AudioContextLatencyCategory get latencyHint => RustLib.instance.api
          .crateApiContextOnlineAudioContextOptionsGetLatencyHint(
        that: this,
      );

  AudioContextRenderSizeCategory get renderSizeHint => RustLib.instance.api
          .crateApiContextOnlineAudioContextOptionsGetRenderSizeHint(
        that: this,
      );

  double? get sampleRate => RustLib.instance.api
          .crateApiContextOnlineAudioContextOptionsGetSampleRate(
        that: this,
      );

  String get sinkId =>
      RustLib.instance.api.crateApiContextOnlineAudioContextOptionsGetSinkId(
        that: this,
      );

  void set latencyHint(AudioContextLatencyCategory latencyHint) =>
      RustLib.instance.api
          .crateApiContextOnlineAudioContextOptionsSetLatencyHint(
              that: this, latencyHint: latencyHint);

  void set renderSizeHint(AudioContextRenderSizeCategory renderSizeHint) =>
      RustLib.instance.api
          .crateApiContextOnlineAudioContextOptionsSetRenderSizeHint(
              that: this, renderSizeHint: renderSizeHint);

  void set sampleRate(double? sampleRate) => RustLib.instance.api
      .crateApiContextOnlineAudioContextOptionsSetSampleRate(
          that: this, sampleRate: sampleRate);

  void set sinkId(String sinkId) =>
      RustLib.instance.api.crateApiContextOnlineAudioContextOptionsSetSinkId(
          that: this, sinkId: sinkId);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioContextRenderSizeCategory>>
@sealed
class AudioContextRenderSizeCategory extends RustOpaque {
  AudioContextRenderSizeCategory.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  AudioContextRenderSizeCategory.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_AudioContextRenderSizeCategory,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_AudioContextRenderSizeCategory,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_AudioContextRenderSizeCategoryPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Box < dyn Error >>>
@sealed
class BoxError extends RustOpaque {
  BoxError.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  BoxError.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_BoxError,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_BoxError,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_BoxErrorPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MediaElement>>
@sealed
class MediaElement extends RustOpaque {
  MediaElement.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  MediaElement.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_MediaElement,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_MediaElement,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_MediaElementPtr,
  );

  Future<double> currentTime({dynamic hint}) => RustLib.instance.api
      .crateApiMediaElementMediaElementCurrentTime(that: this, hint: hint);

  Future<bool> loop({dynamic hint}) => RustLib.instance.api
      .crateApiMediaElementMediaElementLoop(that: this, hint: hint);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  /// Create a new instance for a given file path
  static Future<MediaElement> newInstance({required P file, dynamic hint}) =>
      RustLib.instance.api
          .crateApiMediaElementMediaElementNew(file: file, hint: hint);

  Future<void> pause({dynamic hint}) => RustLib.instance.api
      .crateApiMediaElementMediaElementPause(that: this, hint: hint);

  Future<bool> paused({dynamic hint}) => RustLib.instance.api
      .crateApiMediaElementMediaElementPaused(that: this, hint: hint);

  Future<void> play({dynamic hint}) => RustLib.instance.api
      .crateApiMediaElementMediaElementPlay(that: this, hint: hint);

  Future<double> playbackRate({dynamic hint}) => RustLib.instance.api
      .crateApiMediaElementMediaElementPlaybackRate(that: this, hint: hint);

  Future<void> setCurrentTime({required double value, dynamic hint}) =>
      RustLib.instance.api.crateApiMediaElementMediaElementSetCurrentTime(
          that: this, value: value, hint: hint);

  Future<void> setLoop({required bool value, dynamic hint}) =>
      RustLib.instance.api.crateApiMediaElementMediaElementSetLoop(
          that: this, value: value, hint: hint);

  Future<void> setPlaybackRate({required double value, dynamic hint}) =>
      RustLib.instance.api.crateApiMediaElementMediaElementSetPlaybackRate(
          that: this, value: value, hint: hint);
}
