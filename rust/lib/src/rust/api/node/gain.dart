// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../param.dart';
import 'analyser.dart';
import 'audio_node.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The type `GainRenderer` is not used by any `pub` functions, thus it is ignored.

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<GainNode>>
@sealed
class GainNode extends RustOpaque {
  GainNode.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  GainNode.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_GainNode,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_GainNode,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_GainNodePtr,
  );

  Future<AudioParam> gain({dynamic hint}) =>
      RustLib.instance.api.crateApiNodeGainGainNodeGain(that: this, hint: hint);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<GainNode> newInstance(
          {required C context, required GainOptions options, dynamic hint}) =>
      RustLib.instance.api.crateApiNodeGainGainNodeNew(
          context: context, options: options, hint: hint);
}

/// Options for constructing a [`GainNode`]
class GainOptions {
  final double gain;
  final AudioNodeOptions audioNodeOptions;

  const GainOptions({
    required this.gain,
    required this.audioNodeOptions,
  });

  @override
  int get hashCode => gain.hashCode ^ audioNodeOptions.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GainOptions &&
          runtimeType == other.runtimeType &&
          gain == other.gain &&
          audioNodeOptions == other.audioNodeOptions;
}
