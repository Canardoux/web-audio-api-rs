// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Box < dyn std :: error :: Error + Send + Sync >>>
@sealed
class BoxStdErrorError extends RustOpaque {
  BoxStdErrorError.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  BoxStdErrorError.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_BoxStdErrorError,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_BoxStdErrorError,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_BoxStdErrorErrorPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MediaDecoder>>
@sealed
class MediaDecoder extends RustOpaque {
  MediaDecoder.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  MediaDecoder.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_MediaDecoder,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_MediaDecoder,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_MediaDecoderPtr,
  );

  /// Try to construct a new instance from a `Read` implementer
  ///
  /// # Errors
  ///
  /// This method returns an Error in various cases (IO, mime sniffing, decoding).
  static Future<MediaDecoder> tryNew({required R input, dynamic hint}) =>
      RustLib.instance.api
          .crateApiDecodingMediaDecoderTryNew(input: input, hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MediaInput>>
@sealed
class MediaInput extends RustOpaque {
  MediaInput.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  MediaInput.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_MediaInput,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_MediaInput,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_MediaInputPtr,
  );

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<MediaInput> newInstance({required R input, dynamic hint}) =>
      RustLib.instance.api
          .crateApiDecodingMediaInputNew(input: input, hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<R>>
@sealed
class R extends RustOpaque {
  R.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  R.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_R,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_R,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_RPtr,
  );
}
