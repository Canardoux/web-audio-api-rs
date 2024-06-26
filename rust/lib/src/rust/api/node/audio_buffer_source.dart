// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../buffer.dart';
import '../param.dart';
import 'analyser.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The type `AudioBufferRendererState` is not used by any `pub` functions, thus it is ignored.
// The type `AudioBufferSourceRenderer` is not used by any `pub` functions, thus it is ignored.
// The type `LoopState` is not used by any `pub` functions, thus it is ignored.

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioBufferSourceNode>>
@sealed
class AudioBufferSourceNode extends RustOpaque {
  AudioBufferSourceNode.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  AudioBufferSourceNode.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_AudioBufferSourceNode,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioBufferSourceNode,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioBufferSourceNodePtr,
  );

  /// Current buffer value (nullable)
  Future<AudioBuffer?> buffer({dynamic hint}) => RustLib.instance.api
      .crateApiNodeAudioBufferSourceAudioBufferSourceNodeBuffer(
          that: this, hint: hint);

  /// K-rate [`AudioParam`] that defines a pitch transposition of the file,
  /// expressed in cents
  ///
  /// see <https://en.wikipedia.org/wiki/Cent_(music)>
  Future<AudioParam> detune({dynamic hint}) => RustLib.instance.api
      .crateApiNodeAudioBufferSourceAudioBufferSourceNodeDetune(
          that: this, hint: hint);

  /// Defines if the playback the [`AudioBuffer`] should be looped
  Future<bool> loop({dynamic hint}) => RustLib.instance.api
      .crateApiNodeAudioBufferSourceAudioBufferSourceNodeLoop(
          that: this, hint: hint);

  /// Defines the loop end point, in the time reference of the [`AudioBuffer`]
  Future<double> loopEnd({dynamic hint}) => RustLib.instance.api
      .crateApiNodeAudioBufferSourceAudioBufferSourceNodeLoopEnd(
          that: this, hint: hint);

  /// Defines the loop start point, in the time reference of the [`AudioBuffer`]
  Future<double> loopStart({dynamic hint}) => RustLib.instance.api
      .crateApiNodeAudioBufferSourceAudioBufferSourceNodeLoopStart(
          that: this, hint: hint);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  /// Create a new [`AudioBufferSourceNode`] instance
  static Future<AudioBufferSourceNode> newInstance(
          {required C context,
          required AudioBufferSourceOptions options,
          dynamic hint}) =>
      RustLib.instance.api
          .crateApiNodeAudioBufferSourceAudioBufferSourceNodeNew(
              context: context, options: options, hint: hint);

  /// K-rate [`AudioParam`] that defines the speed at which the [`AudioBuffer`]
  /// will be played, e.g.:
  /// - `0.5` will play the file at half speed
  /// - `-1` will play the file in reverse
  ///
  /// Note that playback rate will also alter the pitch of the [`AudioBuffer`]
  Future<AudioParam> playbackRate({dynamic hint}) => RustLib.instance.api
      .crateApiNodeAudioBufferSourceAudioBufferSourceNodePlaybackRate(
          that: this, hint: hint);

  /// Current playhead position in seconds within the [`AudioBuffer`].
  ///
  /// This value is updated at the end of each render quantum.
  ///
  /// Unofficial v2 API extension, not part of the spec yet.
  /// See also: <https://github.com/WebAudio/web-audio-api/issues/2397#issuecomment-709478405>
  Future<double> position({dynamic hint}) => RustLib.instance.api
      .crateApiNodeAudioBufferSourceAudioBufferSourceNodePosition(
          that: this, hint: hint);

  /// Provide an [`AudioBuffer`] as the source of data to be played bask
  ///
  /// # Panics
  ///
  /// Panics if a buffer has already been given to the source (though `new` or through
  /// `set_buffer`)
  Future<void> setBuffer({required AudioBuffer audioBuffer, dynamic hint}) =>
      RustLib.instance.api
          .crateApiNodeAudioBufferSourceAudioBufferSourceNodeSetBuffer(
              that: this, audioBuffer: audioBuffer, hint: hint);

  Future<void> setLoop({required bool value, dynamic hint}) =>
      RustLib.instance.api
          .crateApiNodeAudioBufferSourceAudioBufferSourceNodeSetLoop(
              that: this, value: value, hint: hint);

  Future<void> setLoopEnd({required double value, dynamic hint}) =>
      RustLib.instance.api
          .crateApiNodeAudioBufferSourceAudioBufferSourceNodeSetLoopEnd(
              that: this, value: value, hint: hint);

  Future<void> setLoopStart({required double value, dynamic hint}) =>
      RustLib.instance.api
          .crateApiNodeAudioBufferSourceAudioBufferSourceNodeSetLoopStart(
              that: this, value: value, hint: hint);

  /// Start the playback at the given time and with a given offset
  ///
  /// # Panics
  ///
  /// Panics if the source was already started
  Future<void> startAtWithOffset(
          {required double start, required double offset, dynamic hint}) =>
      RustLib.instance.api
          .crateApiNodeAudioBufferSourceAudioBufferSourceNodeStartAtWithOffset(
              that: this, start: start, offset: offset, hint: hint);

  /// Start the playback at the given time, with a given offset, for a given duration
  ///
  /// # Panics
  ///
  /// Panics if the source was already started
  Future<void> startAtWithOffsetAndDuration(
          {required double start,
          required double offset,
          required double duration,
          dynamic hint}) =>
      RustLib.instance.api
          .crateApiNodeAudioBufferSourceAudioBufferSourceNodeStartAtWithOffsetAndDuration(
              that: this,
              start: start,
              offset: offset,
              duration: duration,
              hint: hint);
}

/// Options for constructing an [`AudioBufferSourceNode`]
class AudioBufferSourceOptions {
  final AudioBuffer? buffer;
  final double detune;
  final bool loop;
  final double loopStart;
  final double loopEnd;
  final double playbackRate;

  const AudioBufferSourceOptions({
    this.buffer,
    required this.detune,
    required this.loop,
    required this.loopStart,
    required this.loopEnd,
    required this.playbackRate,
  });

  @override
  int get hashCode =>
      buffer.hashCode ^
      detune.hashCode ^
      loop.hashCode ^
      loopStart.hashCode ^
      loopEnd.hashCode ^
      playbackRate.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioBufferSourceOptions &&
          runtimeType == other.runtimeType &&
          buffer == other.buffer &&
          detune == other.detune &&
          loop == other.loop &&
          loopStart == other.loopStart &&
          loopEnd == other.loopEnd &&
          playbackRate == other.playbackRate;
}
