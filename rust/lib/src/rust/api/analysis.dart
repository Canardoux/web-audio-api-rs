// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Analyser>>
@sealed
class Analyser extends RustOpaque {
  Analyser.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  Analyser.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_Analyser,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_Analyser,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_AnalyserPtr,
  );

  Future<BigInt> fftSize({dynamic hint}) => RustLib.instance.api
      .crateApiAnalysisAnalyserFftSize(that: this, hint: hint);

  Future<BigInt> frequencyBinCount({dynamic hint}) => RustLib.instance.api
      .crateApiAnalysisAnalyserFrequencyBinCount(that: this, hint: hint);

  Future<void> getByteFrequencyData(
          {required U8 dst, required double currentTime, dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserGetByteFrequencyData(
          that: this, dst: dst, currentTime: currentTime, hint: hint);

  Future<void> getByteTimeDomainData({required U8 dst, dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserGetByteTimeDomainData(
          that: this, dst: dst, hint: hint);

  Future<void> getFloatFrequencyData(
          {required F32 dst, required double currentTime, dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserGetFloatFrequencyData(
          that: this, dst: dst, currentTime: currentTime, hint: hint);

  Future<void> getFloatTimeDomainData({required F32 dst, dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserGetFloatTimeDomainData(
          that: this, dst: dst, hint: hint);

  Future<AnalyserRingBuffer> getRingBufferClone({dynamic hint}) =>
      RustLib.instance.api
          .crateApiAnalysisAnalyserGetRingBufferClone(that: this, hint: hint);

  Future<double> maxDecibels({dynamic hint}) => RustLib.instance.api
      .crateApiAnalysisAnalyserMaxDecibels(that: this, hint: hint);

  Future<double> minDecibels({dynamic hint}) => RustLib.instance.api
      .crateApiAnalysisAnalyserMinDecibels(that: this, hint: hint);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<Analyser> newInstance({dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserNew(hint: hint);

  Future<void> setDecibels(
          {required double min, required double max, dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserSetDecibels(
          that: this, min: min, max: max, hint: hint);

  Future<void> setFftSize({required BigInt fftSize, dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserSetFftSize(
          that: this, fftSize: fftSize, hint: hint);

  Future<void> setSmoothingTimeConstant(
          {required double value, dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserSetSmoothingTimeConstant(
          that: this, value: value, hint: hint);

  Future<double> smoothingTimeConstant({dynamic hint}) => RustLib.instance.api
      .crateApiAnalysisAnalyserSmoothingTimeConstant(that: this, hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AnalyserRingBuffer>>
@sealed
class AnalyserRingBuffer extends RustOpaque {
  AnalyserRingBuffer.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  AnalyserRingBuffer.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_AnalyserRingBuffer,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_AnalyserRingBuffer,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_AnalyserRingBufferPtr,
  );

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<AnalyserRingBuffer> newInstance({dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserRingBufferNew(hint: hint);

  Future<void> read({required F32 dst, required BigInt maxLen, dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserRingBufferRead(
          that: this, dst: dst, maxLen: maxLen, hint: hint);

  Future<void> write({required F32 src, dynamic hint}) =>
      RustLib.instance.api.crateApiAnalysisAnalyserRingBufferWrite(
          that: this, src: src, hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<[f32]>>
@sealed
class F32 extends RustOpaque {
  F32.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  F32.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_F32,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_F32,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_F32Ptr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<[u8]>>
@sealed
class U8 extends RustOpaque {
  U8.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  U8.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_U8,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_U8,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_U8Ptr,
  );
}
