// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../param.dart';
import 'analyser.dart';
import 'audio_node.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The type `DelayReader` is not used by any `pub` functions, thus it is ignored.
// The type `DelayWriter` is not used by any `pub` functions, thus it is ignored.
// The type `PlaybackInfo` is not used by any `pub` functions, thus it is ignored.

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<DelayNode>>
@sealed
class DelayNode extends RustOpaque {
  DelayNode.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  DelayNode.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_DelayNode,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_DelayNode,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_DelayNodePtr,
  );

  /// A-rate [`AudioParam`] representing the amount of delay (in seconds) to apply.
  Future<AudioParam> delayTime({dynamic hint}) => RustLib.instance.api
      .crateApiNodeDelayDelayNodeDelayTime(that: this, hint: hint);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  /// Create a new DelayNode
  ///
  /// # Panics
  ///
  /// Panics when the max delay value is smaller than zero or langer than three minutes.
  static Future<DelayNode> newInstance(
          {required C context, required DelayOptions options, dynamic hint}) =>
      RustLib.instance.api.crateApiNodeDelayDelayNodeNew(
          context: context, options: options, hint: hint);
}

/// Options for constructing a [`DelayNode`]
class DelayOptions {
  final double maxDelayTime;
  final double delayTime;
  final AudioNodeOptions audioNodeOptions;

  const DelayOptions({
    required this.maxDelayTime,
    required this.delayTime,
    required this.audioNodeOptions,
  });

  @override
  int get hashCode =>
      maxDelayTime.hashCode ^ delayTime.hashCode ^ audioNodeOptions.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DelayOptions &&
          runtimeType == other.runtimeType &&
          maxDelayTime == other.maxDelayTime &&
          delayTime == other.delayTime &&
          audioNodeOptions == other.audioNodeOptions;
}
