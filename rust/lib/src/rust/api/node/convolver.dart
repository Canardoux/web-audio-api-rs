// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../buffer.dart';
import 'analyser.dart';
import 'audio_node.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The type `ConvolverRenderer` is not used by any `pub` functions, thus it is ignored.
// The type `ConvolverRendererInner` is not used by any `pub` functions, thus it is ignored.
// The type `Fft` is not used by any `pub` functions, thus it is ignored.

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<ConvolverNode>>
@sealed
class ConvolverNode extends RustOpaque {
  ConvolverNode.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  ConvolverNode.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_ConvolverNode,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_ConvolverNode,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_ConvolverNodePtr,
  );

  /// Get the current impulse response buffer
  Future<AudioBuffer?> buffer({dynamic hint}) => RustLib.instance.api
      .crateApiNodeConvolverConvolverNodeBuffer(that: this, hint: hint);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  /// returns a `ConvolverNode` instance
  ///
  /// # Arguments
  ///
  /// * `context` - audio context in which the audio node will live.
  /// * `options` - convolver options
  ///
  /// # Panics
  ///
  /// Panics when an AudioBuffer is provided via the `ConvolverOptions` with a sample rate
  /// different from the audio context sample rate.
  static Future<ConvolverNode> newInstance(
          {required C context,
          required ConvolverOptions options,
          dynamic hint}) =>
      RustLib.instance.api.crateApiNodeConvolverConvolverNodeNew(
          context: context, options: options, hint: hint);

  /// Denotes if the response buffer will be scaled with an equal-power normalization
  Future<bool> normalize({dynamic hint}) => RustLib.instance.api
      .crateApiNodeConvolverConvolverNodeNormalize(that: this, hint: hint);

  /// Set or update the impulse response buffer
  ///
  /// # Panics
  ///
  /// Panics when the sample rate of the provided AudioBuffer differs from the audio context
  /// sample rate.
  Future<void> setBuffer({required AudioBuffer buffer, dynamic hint}) =>
      RustLib.instance.api.crateApiNodeConvolverConvolverNodeSetBuffer(
          that: this, buffer: buffer, hint: hint);

  /// Update the `normalize` setting. This will only have an effect when `set_buffer` is called.
  Future<void> setNormalize({required bool value, dynamic hint}) =>
      RustLib.instance.api.crateApiNodeConvolverConvolverNodeSetNormalize(
          that: this, value: value, hint: hint);
}

/// `ConvolverNode` options
class ConvolverOptions {
  /// The desired buffer for the ConvolverNode
  final AudioBuffer? buffer;

  /// The opposite of the desired initial value for the normalize attribute
  final bool disableNormalization;

  /// AudioNode options
  final AudioNodeOptions audioNodeOptions;

  const ConvolverOptions({
    this.buffer,
    required this.disableNormalization,
    required this.audioNodeOptions,
  });

  @override
  int get hashCode =>
      buffer.hashCode ^
      disableNormalization.hashCode ^
      audioNodeOptions.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConvolverOptions &&
          runtimeType == other.runtimeType &&
          buffer == other.buffer &&
          disableNormalization == other.disableNormalization &&
          audioNodeOptions == other.audioNodeOptions;
}
