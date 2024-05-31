// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioDestinationNode>>
@sealed
class AudioDestinationNode extends RustOpaque {
  AudioDestinationNode.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  AudioDestinationNode.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_AudioDestinationNode,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioDestinationNode,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioDestinationNodePtr,
  );

  /// The maximum number of channels that the channelCount attribute can be set to (the max
  /// number of channels that the hardware is capable of supporting).
  /// <https://www.w3.org/TR/webaudio/#dom-audiodestinationnode-maxchannelcount>
  Future<BigInt> maxChannelCount({dynamic hint}) => RustLib.instance.api
      .crateApiNodeDestinationAudioDestinationNodeMaxChannelCount(
          that: this, hint: hint);
}