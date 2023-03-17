#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.70.0.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_new__static_method__ACDC_impl(
    port_: MessagePort,
    issuer: impl Wire2Api<String> + UnwindSafe,
    schema: impl Wire2Api<String> + UnwindSafe,
    data: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "new__static_method__ACDC",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_issuer = issuer.wire2api();
            let api_schema = schema.wire2api();
            let api_data = data.wire2api();
            move |task_callback| Ok(ACDC::new(api_issuer, api_schema, api_data))
        },
    )
}
fn wire_encode__method__ACDC_impl(port_: MessagePort, that: impl Wire2Api<ACDC> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "encode__method__ACDC",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| ACDC::encode(&api_that)
        },
    )
}
fn wire_get_issuer__method__ACDC_impl(port_: MessagePort, that: impl Wire2Api<ACDC> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_issuer__method__ACDC",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(ACDC::get_issuer(&api_that))
        },
    )
}
fn wire_get_data__method__ACDC_impl(port_: MessagePort, that: impl Wire2Api<ACDC> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_data__method__ACDC",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(ACDC::get_data(&api_that))
        },
    )
}
fn wire_get_schema__method__ACDC_impl(port_: MessagePort, that: impl Wire2Api<ACDC> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_schema__method__ACDC",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(ACDC::get_schema(&api_that))
        },
    )
}
fn wire_parse__static_method__ACDC_impl(
    port_: MessagePort,
    stream: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "parse__static_method__ACDC",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_stream = stream.wire2api();
            move |task_callback| Ok(ACDC::parse(api_stream))
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for ACDC {
    fn into_dart(self) -> support::DartAbi {
        vec![self.0.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for ACDC {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

#[cfg(not(target_family = "wasm"))]
#[path = "bridge_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;