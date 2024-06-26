// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'node/analyser.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'param.dart';

// The type `AudioListenerParams` is not used by any `pub` functions, thus it is ignored.
// The type `ListenerRenderer` is not used by any `pub` functions, thus it is ignored.

/// Direction to source position measured from listener in 3D
Future<(double, double)> azimuthAndElevation(
        {required Vector3F32 sourcePosition,
        required Vector3F32 listenerPosition,
        required Vector3F32 listenerForward,
        required Vector3F32 listenerUp,
        dynamic hint}) =>
    RustLib.instance.api.crateApiSpatialAzimuthAndElevation(
        sourcePosition: sourcePosition,
        listenerPosition: listenerPosition,
        listenerForward: listenerForward,
        listenerUp: listenerUp,
        hint: hint);

/// Distance between two points in 3D
Future<double> distance(
        {required Vector3F32 sourcePosition,
        required Vector3F32 listenerPosition,
        dynamic hint}) =>
    RustLib.instance.api.crateApiSpatialDistance(
        sourcePosition: sourcePosition,
        listenerPosition: listenerPosition,
        hint: hint);

/// Angle between two vectors in 3D
Future<double> angle(
        {required Vector3F32 sourcePosition,
        required Vector3F32 sourceOrientation,
        required Vector3F32 listenerPosition,
        dynamic hint}) =>
    RustLib.instance.api.crateApiSpatialAngle(
        sourcePosition: sourcePosition,
        sourceOrientation: sourceOrientation,
        listenerPosition: listenerPosition,
        hint: hint);

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioListenerNode>>
@sealed
class AudioListenerNode extends RustOpaque {
  AudioListenerNode.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  AudioListenerNode.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_AudioListenerNode,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioListenerNode,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioListenerNodePtr,
  );

  Future<AudioListener> intoFields({dynamic hint}) => RustLib.instance.api
      .crateApiSpatialAudioListenerNodeIntoFields(that: this, hint: hint);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<AudioListenerNode> newInstance(
          {required C context, dynamic hint}) =>
      RustLib.instance.api
          .crateApiSpatialAudioListenerNodeNew(context: context, hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Vector3 < f32 >>>
@sealed
class Vector3F32 extends RustOpaque {
  Vector3F32.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  Vector3F32.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_Vector3F32,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_Vector3F32,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_Vector3F32Ptr,
  );
}

/// Represents the position and orientation of the person listening to the audio scene
///
/// All [`PannerNode`](crate::api::node::PannerNode) objects spatialize in relation to the [BaseAudioContext's](crate::api::context::BaseAudioContext) listener.
///
/// # Usage
///
/// For example usage, check the [`PannerNode`](crate::api::node::PannerNode) docs.
class AudioListener {
  final AudioParam positionX;
  final AudioParam positionY;
  final AudioParam positionZ;
  final AudioParam forwardX;
  final AudioParam forwardY;
  final AudioParam forwardZ;
  final AudioParam upX;
  final AudioParam upY;
  final AudioParam upZ;

  const AudioListener({
    required this.positionX,
    required this.positionY,
    required this.positionZ,
    required this.forwardX,
    required this.forwardY,
    required this.forwardZ,
    required this.upX,
    required this.upY,
    required this.upZ,
  });

  Future<AudioParam> forwardX({dynamic hint}) => RustLib.instance.api
      .crateApiSpatialAudioListenerForwardX(that: this, hint: hint);

  Future<AudioParam> forwardY({dynamic hint}) => RustLib.instance.api
      .crateApiSpatialAudioListenerForwardY(that: this, hint: hint);

  Future<AudioParam> forwardZ({dynamic hint}) => RustLib.instance.api
      .crateApiSpatialAudioListenerForwardZ(that: this, hint: hint);

  Future<AudioParam> positionX({dynamic hint}) => RustLib.instance.api
      .crateApiSpatialAudioListenerPositionX(that: this, hint: hint);

  Future<AudioParam> positionY({dynamic hint}) => RustLib.instance.api
      .crateApiSpatialAudioListenerPositionY(that: this, hint: hint);

  Future<AudioParam> positionZ({dynamic hint}) => RustLib.instance.api
      .crateApiSpatialAudioListenerPositionZ(that: this, hint: hint);

  Future<AudioParam> upX({dynamic hint}) => RustLib.instance.api
      .crateApiSpatialAudioListenerUpX(that: this, hint: hint);

  Future<AudioParam> upY({dynamic hint}) => RustLib.instance.api
      .crateApiSpatialAudioListenerUpY(that: this, hint: hint);

  Future<AudioParam> upZ({dynamic hint}) => RustLib.instance.api
      .crateApiSpatialAudioListenerUpZ(that: this, hint: hint);

  @override
  int get hashCode =>
      positionX.hashCode ^
      positionY.hashCode ^
      positionZ.hashCode ^
      forwardX.hashCode ^
      forwardY.hashCode ^
      forwardZ.hashCode ^
      upX.hashCode ^
      upY.hashCode ^
      upZ.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioListener &&
          runtimeType == other.runtimeType &&
          positionX == other.positionX &&
          positionY == other.positionY &&
          positionZ == other.positionZ &&
          forwardX == other.forwardX &&
          forwardY == other.forwardY &&
          forwardZ == other.forwardZ &&
          upX == other.upX &&
          upY == other.upY &&
          upZ == other.upZ;
}
