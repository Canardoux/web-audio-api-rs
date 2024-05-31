// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// Section: imports

use super::*;
use crate::api::analysis::*;
use crate::api::api::*;
use crate::api::decoding::*;
use crate::api::media_element::*;
use crate::api::message::*;
use crate::api::message_port::*;
use crate::api::param::*;
use crate::api::periodic_wave::*;
use crate::api::resampling::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate_io!();

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAnalyser(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Analyser>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAnalyser(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Analyser>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAnalyserRingBuffer(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AnalyserRingBuffer>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAnalyserRingBuffer(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AnalyserRingBuffer>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAtomicF32(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AtomicF32>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAtomicF32(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AtomicF32>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAtomicF64(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AtomicF64>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAtomicF64(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AtomicF64>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAudioParam(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioParam>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerAudioParam(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioParam>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerBoxdynError(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Box < dyn Error >>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerBoxdynError(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Box < dyn Error >>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerBoxdynstderrorErrorSendSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::RustAutoOpaqueInner<
            Box<dyn std::error::Error + Send + Sync>,
        >,
    >::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerBoxdynstderrorErrorSendSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::RustAutoOpaqueInner<
            Box<dyn std::error::Error + Send + Sync>,
        >,
    >::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerC(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<C>>::increment_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerC(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<C>>::decrement_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerF(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<F>>::increment_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerF(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<F>>::decrement_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerM(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<M>>::increment_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerM(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<M>>::decrement_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMediaDecoder(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MediaDecoder>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMediaDecoder(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MediaDecoder>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMediaElement(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MediaElement>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMediaElement(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MediaElement>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMediaInput(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MediaInput>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMediaInput(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MediaInput>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMessagePort(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MessagePort>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMessagePort(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MessagePort>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerOneshotNotify(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<OneshotNotify>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerOneshotNotify(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<OneshotNotify>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerOrdering(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Ordering>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerOrdering(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Ordering>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerP(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<P>>::increment_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerP(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<P>>::decrement_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeriodicWave(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<PeriodicWave>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerPeriodicWave(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<PeriodicWave>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerR(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<R>>::increment_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerR(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<R>>::decrement_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerResampler(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Resampler>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerResampler(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Resampler>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSelf(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Self>>::increment_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSelf(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Self>>::decrement_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerf32(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<[f32]>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerf32(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<[f32]>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInneru8(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<[u8]>>::increment_strong_count(
        ptr as _,
    );
}

#[no_mangle]
pub extern "C" fn frbgen_tau_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInneru8(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<[u8]>>::decrement_strong_count(
        ptr as _,
    );
}
