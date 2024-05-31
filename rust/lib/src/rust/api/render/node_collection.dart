// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../context/context.dart';
import 'graph.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<NodeCollection>>
@sealed
class NodeCollection extends RustOpaque {
  NodeCollection.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  NodeCollection.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_NodeCollection,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_NodeCollection,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_NodeCollectionPtr,
  );

  Future<bool> contains({required AudioNodeId index, dynamic hint}) =>
      RustLib.instance.api.crateApiRenderNodeCollectionNodeCollectionContains(
          that: this, index: index, hint: hint);

  Future<RefCellNode?> getMut({required AudioNodeId index, dynamic hint}) =>
      RustLib.instance.api.crateApiRenderNodeCollectionNodeCollectionGetMut(
          that: this, index: index, hint: hint);

  Future<RefCellNode> getUnchecked(
          {required AudioNodeId index, dynamic hint}) =>
      RustLib.instance.api
          .crateApiRenderNodeCollectionNodeCollectionGetUnchecked(
              that: this, index: index, hint: hint);

  Future<Node> getUncheckedMut({required AudioNodeId index, dynamic hint}) =>
      RustLib.instance.api
          .crateApiRenderNodeCollectionNodeCollectionGetUncheckedMut(
              that: this, index: index, hint: hint);

  Future<void> insert(
          {required AudioNodeId index,
          required RefCellNode value,
          dynamic hint}) =>
      RustLib.instance.api.crateApiRenderNodeCollectionNodeCollectionInsert(
          that: this, index: index, value: value, hint: hint);

  Future<bool> isEmpty({dynamic hint}) =>
      RustLib.instance.api.crateApiRenderNodeCollectionNodeCollectionIsEmpty(
          that: this, hint: hint);

  Future<IteratorItemAudioNodeIdMutRefCellNode> iterMut({dynamic hint}) =>
      RustLib.instance.api.crateApiRenderNodeCollectionNodeCollectionIterMut(
          that: this, hint: hint);

  Future<IteratorItemAudioNodeId> keys({dynamic hint}) => RustLib.instance.api
      .crateApiRenderNodeCollectionNodeCollectionKeys(that: this, hint: hint);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<NodeCollection> newInstance({dynamic hint}) =>
      RustLib.instance.api
          .crateApiRenderNodeCollectionNodeCollectionNew(hint: hint);

  Future<RefCellNode> remove({required AudioNodeId index, dynamic hint}) =>
      RustLib.instance.api.crateApiRenderNodeCollectionNodeCollectionRemove(
          that: this, index: index, hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<RefCell < Node >>>
@sealed
class RefCellNode extends RustOpaque {
  RefCellNode.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  RefCellNode.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_RefCellNode,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_RefCellNode,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_RefCellNodePtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<dyn Iterator < Item = AudioNodeId >>>
@sealed
class IteratorItemAudioNodeId extends RustOpaque {
  IteratorItemAudioNodeId.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  IteratorItemAudioNodeId.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_IteratorItemAudioNodeId,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_IteratorItemAudioNodeId,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_IteratorItemAudioNodeIdPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<dyn Iterator < Item = (AudioNodeId , & mut RefCell < Node >) >>>
@sealed
class IteratorItemAudioNodeIdMutRefCellNode extends RustOpaque {
  IteratorItemAudioNodeIdMutRefCellNode.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  IteratorItemAudioNodeIdMutRefCellNode.sseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_IteratorItemAudioNodeIdMutRefCellNode,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_IteratorItemAudioNodeIdMutRefCellNode,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_IteratorItemAudioNodeIdMutRefCellNodePtr,
  );
}