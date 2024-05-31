// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioContextRegistration>>
@sealed
class AudioContextRegistration extends RustOpaque {
  AudioContextRegistration.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  AudioContextRegistration.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_AudioContextRegistration,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioContextRegistration,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_AudioContextRegistrationPtr,
  );
}

/// Describes the current state of the `AudioContext`
enum AudioContextState {
  /// This context is currently suspended (context time is not proceeding,
  /// audio hardware may be powered down/released).
  suspended,

  /// Audio is being processed.
  running,

  /// This context has been released, and can no longer be used to process audio.
  /// All system audio resources have been released.
  closed,
  ;
}

/// Unique identifier for audio nodes.
///
/// Used for internal bookkeeping.
class AudioNodeId {
  final BigInt field0;

  const AudioNodeId({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioNodeId &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

/// Unique identifier for audio params.
///
/// Store these in your `AudioProcessor` to get access to `AudioParam` values.
class AudioParamId {
  final BigInt field0;

  const AudioParamId({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioParamId &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}
