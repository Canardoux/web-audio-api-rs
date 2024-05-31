// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../buffer.dart';
import '../context/offline.dart';
import '../events.dart';
import 'graph.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The type `TerminateGarbageCollectorThread` is not used by any `pub` functions, thus it is ignored.

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Arc < AtomicU64 >>>
@sealed
class ArcAtomicU64 extends RustOpaque {
  ArcAtomicU64.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  ArcAtomicU64.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_ArcAtomicU64,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_ArcAtomicU64,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_ArcAtomicU64Ptr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Arc < AtomicU8 >>>
@sealed
class ArcAtomicU8 extends RustOpaque {
  ArcAtomicU8.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  ArcAtomicU8.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_ArcAtomicU8,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_ArcAtomicU8,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_ArcAtomicU8Ptr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Box < dyn FnOnce (& mut OfflineAudioContext) + Send + Sync + 'static >>>
@sealed
class BoxFnOnceMutOfflineAudioContext extends RustOpaque {
  BoxFnOnceMutOfflineAudioContext.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  BoxFnOnceMutOfflineAudioContext.sseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_BoxFnOnceMutOfflineAudioContext,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_BoxFnOnceMutOfflineAudioContext,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_BoxFnOnceMutOfflineAudioContextPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Receiver < ControlMessage >>>
@sealed
class ReceiverControlMessage extends RustOpaque {
  ReceiverControlMessage.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  ReceiverControlMessage.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_ReceiverControlMessage,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_ReceiverControlMessage,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_ReceiverControlMessagePtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<RenderThread>>
@sealed
class RenderThread extends RustOpaque {
  RenderThread.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  RenderThread.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_RenderThread,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_RenderThread,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_RenderThreadPtr,
  );

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<RenderThread> newInstance(
          {required double sampleRate,
          required BigInt numberOfChannels,
          required ReceiverControlMessage receiver,
          required ArcAtomicU8 state,
          required ArcAtomicU64 framesPlayed,
          required SenderEventDispatch eventSender,
          dynamic hint}) =>
      RustLib.instance.api.crateApiRenderThreadRenderThreadNew(
          sampleRate: sampleRate,
          numberOfChannels: numberOfChannels,
          receiver: receiver,
          state: state,
          framesPlayed: framesPlayed,
          eventSender: eventSender,
          hint: hint);

  Future<void> render({required S outputBuffer, dynamic hint}) =>
      RustLib.instance.api.crateApiRenderThreadRenderThreadRender(
          that: this, outputBuffer: outputBuffer, hint: hint);

  Future<AudioBuffer> renderAudiobuffer(
          {required BigInt length,
          required List<(BigInt, OneshotSender)> suspendCallbacks,
          required MpscReceiver resumeReceiver,
          required EventLoop eventLoop,
          dynamic hint}) =>
      RustLib.instance.api.crateApiRenderThreadRenderThreadRenderAudiobuffer(
          that: this,
          length: length,
          suspendCallbacks: suspendCallbacks,
          resumeReceiver: resumeReceiver,
          eventLoop: eventLoop,
          hint: hint);

  Future<AudioBuffer> renderAudiobufferSync(
          {required OfflineAudioContext context,
          required List<(BigInt, BoxFnOnceMutOfflineAudioContext)>
              suspendCallbacks,
          required EventLoop eventLoop,
          dynamic hint}) =>
      RustLib.instance.api
          .crateApiRenderThreadRenderThreadRenderAudiobufferSync(
              that: this,
              context: context,
              suspendCallbacks: suspendCallbacks,
              eventLoop: eventLoop,
              hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<[S]>>
@sealed
class S extends RustOpaque {
  S.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  S.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_S,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_S,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_SPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<mpsc :: Receiver < () >>>
@sealed
class MpscReceiver extends RustOpaque {
  MpscReceiver.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  MpscReceiver.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_MpscReceiver,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_MpscReceiver,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_MpscReceiverPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<oneshot :: Sender < () >>>
@sealed
class OneshotSender extends RustOpaque {
  OneshotSender.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  OneshotSender.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_OneshotSender,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_OneshotSender,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_OneshotSenderPtr,
  );
}