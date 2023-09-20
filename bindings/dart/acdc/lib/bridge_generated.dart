// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

abstract class Dart {
  Future<ACDC> issuePublicUntargetedStaticMethodAcdc(
      {required String issuer,
      required String registryId,
      required String schema,
      required String attributes,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kIssuePublicUntargetedStaticMethodAcdcConstMeta;

  Future<ACDC> issuePublicTargetedStaticMethodAcdc(
      {required String issuer,
      required String registryId,
      required String target,
      required String schema,
      required String attributes,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kIssuePublicTargetedStaticMethodAcdcConstMeta;

  Future<ACDC> issuePrivateUntargetedStaticMethodAcdc(
      {required String issuer,
      required String schema,
      required String registryId,
      required String attributes,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kIssuePrivateUntargetedStaticMethodAcdcConstMeta;

  Future<ACDC> issuePrivateTargetedStaticMethodAcdc(
      {required String issuer,
      required String registryId,
      required String target,
      required String schema,
      required String attributes,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kIssuePrivateTargetedStaticMethodAcdcConstMeta;

  Future<String> encodeMethodAcdc({required ACDC that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kEncodeMethodAcdcConstMeta;

  Future<String> getIssuerMethodAcdc({required ACDC that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetIssuerMethodAcdcConstMeta;

  Future<String> getAttributesMethodAcdc({required ACDC that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetAttributesMethodAcdcConstMeta;

  Future<String> getSchemaMethodAcdc({required ACDC that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetSchemaMethodAcdcConstMeta;

  Future<String> getDigestMethodAcdc({required ACDC that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetDigestMethodAcdcConstMeta;

  Future<ACDC> parseStaticMethodAcdc({required String stream, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kParseStaticMethodAcdcConstMeta;

  DropFnType get dropOpaqueAttestation;
  ShareFnType get shareOpaqueAttestation;
  OpaqueTypeFinalizer get AttestationFinalizer;
}

@sealed
class Attestation extends FrbOpaque {
  final Dart bridge;
  Attestation.fromRaw(int ptr, int size, this.bridge) : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueAttestation;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueAttestation;

  @override
  OpaqueTypeFinalizer get staticFinalizer => bridge.AttestationFinalizer;
}

class ACDC {
  final Dart bridge;
  final Attestation field0;

  const ACDC({
    required this.bridge,
    required this.field0,
  });

  static Future<ACDC> issuePublicUntargeted(
          {required Dart bridge,
          required String issuer,
          required String registryId,
          required String schema,
          required String attributes,
          dynamic hint}) =>
      bridge.issuePublicUntargetedStaticMethodAcdc(
          issuer: issuer,
          registryId: registryId,
          schema: schema,
          attributes: attributes,
          hint: hint);

  static Future<ACDC> issuePublicTargeted(
          {required Dart bridge,
          required String issuer,
          required String registryId,
          required String target,
          required String schema,
          required String attributes,
          dynamic hint}) =>
      bridge.issuePublicTargetedStaticMethodAcdc(
          issuer: issuer,
          registryId: registryId,
          target: target,
          schema: schema,
          attributes: attributes,
          hint: hint);

  static Future<ACDC> issuePrivateUntargeted(
          {required Dart bridge,
          required String issuer,
          required String schema,
          required String registryId,
          required String attributes,
          dynamic hint}) =>
      bridge.issuePrivateUntargetedStaticMethodAcdc(
          issuer: issuer,
          schema: schema,
          registryId: registryId,
          attributes: attributes,
          hint: hint);

  static Future<ACDC> issuePrivateTargeted(
          {required Dart bridge,
          required String issuer,
          required String registryId,
          required String target,
          required String schema,
          required String attributes,
          dynamic hint}) =>
      bridge.issuePrivateTargetedStaticMethodAcdc(
          issuer: issuer,
          registryId: registryId,
          target: target,
          schema: schema,
          attributes: attributes,
          hint: hint);

  Future<String> encode({dynamic hint}) => bridge.encodeMethodAcdc(
        that: this,
      );

  Future<String> getIssuer({dynamic hint}) => bridge.getIssuerMethodAcdc(
        that: this,
      );

  Future<String> getAttributes({dynamic hint}) =>
      bridge.getAttributesMethodAcdc(
        that: this,
      );

  Future<String> getSchema({dynamic hint}) => bridge.getSchemaMethodAcdc(
        that: this,
      );

  Future<String> getDigest({dynamic hint}) => bridge.getDigestMethodAcdc(
        that: this,
      );

  static Future<ACDC> parse(
          {required Dart bridge, required String stream, dynamic hint}) =>
      bridge.parseStaticMethodAcdc(stream: stream, hint: hint);
}

class DartImpl implements Dart {
  final DartPlatform _platform;
  factory DartImpl(ExternalLibrary dylib) => DartImpl.raw(DartPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory DartImpl.wasm(FutureOr<WasmModule> module) =>
      DartImpl(module as ExternalLibrary);
  DartImpl.raw(this._platform);
  Future<ACDC> issuePublicUntargetedStaticMethodAcdc(
      {required String issuer,
      required String registryId,
      required String schema,
      required String attributes,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(issuer);
    var arg1 = _platform.api2wire_String(registryId);
    var arg2 = _platform.api2wire_String(schema);
    var arg3 = _platform.api2wire_String(attributes);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_issue_public_untargeted__static_method__ACDC(
              port_, arg0, arg1, arg2, arg3),
      parseSuccessData: (d) => _wire2api_acdc(d),
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kIssuePublicUntargetedStaticMethodAcdcConstMeta,
      argValues: [issuer, registryId, schema, attributes],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kIssuePublicUntargetedStaticMethodAcdcConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "issue_public_untargeted__static_method__ACDC",
            argNames: ["issuer", "registryId", "schema", "attributes"],
          );

  Future<ACDC> issuePublicTargetedStaticMethodAcdc(
      {required String issuer,
      required String registryId,
      required String target,
      required String schema,
      required String attributes,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(issuer);
    var arg1 = _platform.api2wire_String(registryId);
    var arg2 = _platform.api2wire_String(target);
    var arg3 = _platform.api2wire_String(schema);
    var arg4 = _platform.api2wire_String(attributes);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_issue_public_targeted__static_method__ACDC(
              port_, arg0, arg1, arg2, arg3, arg4),
      parseSuccessData: (d) => _wire2api_acdc(d),
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kIssuePublicTargetedStaticMethodAcdcConstMeta,
      argValues: [issuer, registryId, target, schema, attributes],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kIssuePublicTargetedStaticMethodAcdcConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "issue_public_targeted__static_method__ACDC",
            argNames: [
              "issuer",
              "registryId",
              "target",
              "schema",
              "attributes"
            ],
          );

  Future<ACDC> issuePrivateUntargetedStaticMethodAcdc(
      {required String issuer,
      required String schema,
      required String registryId,
      required String attributes,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(issuer);
    var arg1 = _platform.api2wire_String(schema);
    var arg2 = _platform.api2wire_String(registryId);
    var arg3 = _platform.api2wire_String(attributes);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_issue_private_untargeted__static_method__ACDC(
              port_, arg0, arg1, arg2, arg3),
      parseSuccessData: (d) => _wire2api_acdc(d),
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kIssuePrivateUntargetedStaticMethodAcdcConstMeta,
      argValues: [issuer, schema, registryId, attributes],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kIssuePrivateUntargetedStaticMethodAcdcConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "issue_private_untargeted__static_method__ACDC",
            argNames: ["issuer", "schema", "registryId", "attributes"],
          );

  Future<ACDC> issuePrivateTargetedStaticMethodAcdc(
      {required String issuer,
      required String registryId,
      required String target,
      required String schema,
      required String attributes,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(issuer);
    var arg1 = _platform.api2wire_String(registryId);
    var arg2 = _platform.api2wire_String(target);
    var arg3 = _platform.api2wire_String(schema);
    var arg4 = _platform.api2wire_String(attributes);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_issue_private_targeted__static_method__ACDC(
              port_, arg0, arg1, arg2, arg3, arg4),
      parseSuccessData: (d) => _wire2api_acdc(d),
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kIssuePrivateTargetedStaticMethodAcdcConstMeta,
      argValues: [issuer, registryId, target, schema, attributes],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kIssuePrivateTargetedStaticMethodAcdcConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "issue_private_targeted__static_method__ACDC",
            argNames: [
              "issuer",
              "registryId",
              "target",
              "schema",
              "attributes"
            ],
          );

  Future<String> encodeMethodAcdc({required ACDC that, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_acdc(that);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_encode__method__ACDC(port_, arg0),
      parseSuccessData: _wire2api_String,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kEncodeMethodAcdcConstMeta,
      argValues: [that],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kEncodeMethodAcdcConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "encode__method__ACDC",
        argNames: ["that"],
      );

  Future<String> getIssuerMethodAcdc({required ACDC that, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_acdc(that);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_get_issuer__method__ACDC(port_, arg0),
      parseSuccessData: _wire2api_String,
      parseErrorData: null,
      constMeta: kGetIssuerMethodAcdcConstMeta,
      argValues: [that],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetIssuerMethodAcdcConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_issuer__method__ACDC",
        argNames: ["that"],
      );

  Future<String> getAttributesMethodAcdc({required ACDC that, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_acdc(that);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_get_attributes__method__ACDC(port_, arg0),
      parseSuccessData: _wire2api_String,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kGetAttributesMethodAcdcConstMeta,
      argValues: [that],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetAttributesMethodAcdcConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_attributes__method__ACDC",
        argNames: ["that"],
      );

  Future<String> getSchemaMethodAcdc({required ACDC that, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_acdc(that);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_get_schema__method__ACDC(port_, arg0),
      parseSuccessData: _wire2api_String,
      parseErrorData: null,
      constMeta: kGetSchemaMethodAcdcConstMeta,
      argValues: [that],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetSchemaMethodAcdcConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_schema__method__ACDC",
        argNames: ["that"],
      );

  Future<String> getDigestMethodAcdc({required ACDC that, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_acdc(that);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_get_digest__method__ACDC(port_, arg0),
      parseSuccessData: _wire2api_String,
      parseErrorData: null,
      constMeta: kGetDigestMethodAcdcConstMeta,
      argValues: [that],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetDigestMethodAcdcConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_digest__method__ACDC",
        argNames: ["that"],
      );

  Future<ACDC> parseStaticMethodAcdc({required String stream, dynamic hint}) {
    var arg0 = _platform.api2wire_String(stream);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_parse__static_method__ACDC(port_, arg0),
      parseSuccessData: (d) => _wire2api_acdc(d),
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kParseStaticMethodAcdcConstMeta,
      argValues: [stream],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kParseStaticMethodAcdcConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "parse__static_method__ACDC",
        argNames: ["stream"],
      );

  DropFnType get dropOpaqueAttestation =>
      _platform.inner.drop_opaque_Attestation;
  ShareFnType get shareOpaqueAttestation =>
      _platform.inner.share_opaque_Attestation;
  OpaqueTypeFinalizer get AttestationFinalizer =>
      _platform.AttestationFinalizer;

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  Attestation _wire2api_Attestation(dynamic raw) {
    return Attestation.fromRaw(raw[0], raw[1], this);
  }

  FrbAnyhowException _wire2api_FrbAnyhowException(dynamic raw) {
    return FrbAnyhowException(raw as String);
  }

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  ACDC _wire2api_acdc(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return ACDC(
      bridge: this,
      field0: _wire2api_Attestation(arr[0]),
    );
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }
}

// Section: api2wire

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer

class DartPlatform extends FlutterRustBridgeBase<DartWire> {
  DartPlatform(ffi.DynamicLibrary dylib) : super(DartWire(dylib));

// Section: api2wire

  @protected
  wire_Attestation api2wire_Attestation(Attestation raw) {
    final ptr = inner.new_Attestation();
    _api_fill_to_wire_Attestation(raw, ptr);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_ACDC> api2wire_box_autoadd_acdc(ACDC raw) {
    final ptr = inner.new_box_autoadd_acdc_0();
    _api_fill_to_wire_acdc(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

  late final OpaqueTypeFinalizer _AttestationFinalizer =
      OpaqueTypeFinalizer(inner._drop_opaque_AttestationPtr);
  OpaqueTypeFinalizer get AttestationFinalizer => _AttestationFinalizer;
// Section: api_fill_to_wire

  void _api_fill_to_wire_Attestation(
      Attestation apiObj, wire_Attestation wireObj) {
    wireObj.ptr = apiObj.shareOrMove();
  }

  void _api_fill_to_wire_acdc(ACDC apiObj, wire_ACDC wireObj) {
    wireObj.field0 = api2wire_Attestation(apiObj.field0);
  }

  void _api_fill_to_wire_box_autoadd_acdc(
      ACDC apiObj, ffi.Pointer<wire_ACDC> wireObj) {
    _api_fill_to_wire_acdc(apiObj, wireObj.ref);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class DartWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  DartWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  DartWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_issue_public_untargeted__static_method__ACDC(
    int port_,
    ffi.Pointer<wire_uint_8_list> issuer,
    ffi.Pointer<wire_uint_8_list> registry_id,
    ffi.Pointer<wire_uint_8_list> schema,
    ffi.Pointer<wire_uint_8_list> attributes,
  ) {
    return _wire_issue_public_untargeted__static_method__ACDC(
      port_,
      issuer,
      registry_id,
      schema,
      attributes,
    );
  }

  late final _wire_issue_public_untargeted__static_method__ACDCPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_issue_public_untargeted__static_method__ACDC');
  late final _wire_issue_public_untargeted__static_method__ACDC =
      _wire_issue_public_untargeted__static_method__ACDCPtr.asFunction<
          void Function(
              int,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_issue_public_targeted__static_method__ACDC(
    int port_,
    ffi.Pointer<wire_uint_8_list> issuer,
    ffi.Pointer<wire_uint_8_list> registry_id,
    ffi.Pointer<wire_uint_8_list> target,
    ffi.Pointer<wire_uint_8_list> schema,
    ffi.Pointer<wire_uint_8_list> attributes,
  ) {
    return _wire_issue_public_targeted__static_method__ACDC(
      port_,
      issuer,
      registry_id,
      target,
      schema,
      attributes,
    );
  }

  late final _wire_issue_public_targeted__static_method__ACDCPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_issue_public_targeted__static_method__ACDC');
  late final _wire_issue_public_targeted__static_method__ACDC =
      _wire_issue_public_targeted__static_method__ACDCPtr.asFunction<
          void Function(
              int,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_issue_private_untargeted__static_method__ACDC(
    int port_,
    ffi.Pointer<wire_uint_8_list> issuer,
    ffi.Pointer<wire_uint_8_list> schema,
    ffi.Pointer<wire_uint_8_list> registry_id,
    ffi.Pointer<wire_uint_8_list> attributes,
  ) {
    return _wire_issue_private_untargeted__static_method__ACDC(
      port_,
      issuer,
      schema,
      registry_id,
      attributes,
    );
  }

  late final _wire_issue_private_untargeted__static_method__ACDCPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_issue_private_untargeted__static_method__ACDC');
  late final _wire_issue_private_untargeted__static_method__ACDC =
      _wire_issue_private_untargeted__static_method__ACDCPtr.asFunction<
          void Function(
              int,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_issue_private_targeted__static_method__ACDC(
    int port_,
    ffi.Pointer<wire_uint_8_list> issuer,
    ffi.Pointer<wire_uint_8_list> registry_id,
    ffi.Pointer<wire_uint_8_list> target,
    ffi.Pointer<wire_uint_8_list> schema,
    ffi.Pointer<wire_uint_8_list> attributes,
  ) {
    return _wire_issue_private_targeted__static_method__ACDC(
      port_,
      issuer,
      registry_id,
      target,
      schema,
      attributes,
    );
  }

  late final _wire_issue_private_targeted__static_method__ACDCPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_issue_private_targeted__static_method__ACDC');
  late final _wire_issue_private_targeted__static_method__ACDC =
      _wire_issue_private_targeted__static_method__ACDCPtr.asFunction<
          void Function(
              int,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_encode__method__ACDC(
    int port_,
    ffi.Pointer<wire_ACDC> that,
  ) {
    return _wire_encode__method__ACDC(
      port_,
      that,
    );
  }

  late final _wire_encode__method__ACDCPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_ACDC>)>>('wire_encode__method__ACDC');
  late final _wire_encode__method__ACDC = _wire_encode__method__ACDCPtr
      .asFunction<void Function(int, ffi.Pointer<wire_ACDC>)>();

  void wire_get_issuer__method__ACDC(
    int port_,
    ffi.Pointer<wire_ACDC> that,
  ) {
    return _wire_get_issuer__method__ACDC(
      port_,
      that,
    );
  }

  late final _wire_get_issuer__method__ACDCPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_ACDC>)>>('wire_get_issuer__method__ACDC');
  late final _wire_get_issuer__method__ACDC = _wire_get_issuer__method__ACDCPtr
      .asFunction<void Function(int, ffi.Pointer<wire_ACDC>)>();

  void wire_get_attributes__method__ACDC(
    int port_,
    ffi.Pointer<wire_ACDC> that,
  ) {
    return _wire_get_attributes__method__ACDC(
      port_,
      that,
    );
  }

  late final _wire_get_attributes__method__ACDCPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_ACDC>)>>('wire_get_attributes__method__ACDC');
  late final _wire_get_attributes__method__ACDC =
      _wire_get_attributes__method__ACDCPtr
          .asFunction<void Function(int, ffi.Pointer<wire_ACDC>)>();

  void wire_get_schema__method__ACDC(
    int port_,
    ffi.Pointer<wire_ACDC> that,
  ) {
    return _wire_get_schema__method__ACDC(
      port_,
      that,
    );
  }

  late final _wire_get_schema__method__ACDCPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_ACDC>)>>('wire_get_schema__method__ACDC');
  late final _wire_get_schema__method__ACDC = _wire_get_schema__method__ACDCPtr
      .asFunction<void Function(int, ffi.Pointer<wire_ACDC>)>();

  void wire_get_digest__method__ACDC(
    int port_,
    ffi.Pointer<wire_ACDC> that,
  ) {
    return _wire_get_digest__method__ACDC(
      port_,
      that,
    );
  }

  late final _wire_get_digest__method__ACDCPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_ACDC>)>>('wire_get_digest__method__ACDC');
  late final _wire_get_digest__method__ACDC = _wire_get_digest__method__ACDCPtr
      .asFunction<void Function(int, ffi.Pointer<wire_ACDC>)>();

  void wire_parse__static_method__ACDC(
    int port_,
    ffi.Pointer<wire_uint_8_list> stream,
  ) {
    return _wire_parse__static_method__ACDC(
      port_,
      stream,
    );
  }

  late final _wire_parse__static_method__ACDCPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_parse__static_method__ACDC');
  late final _wire_parse__static_method__ACDC =
      _wire_parse__static_method__ACDCPtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  wire_Attestation new_Attestation() {
    return _new_Attestation();
  }

  late final _new_AttestationPtr =
      _lookup<ffi.NativeFunction<wire_Attestation Function()>>(
          'new_Attestation');
  late final _new_Attestation =
      _new_AttestationPtr.asFunction<wire_Attestation Function()>();

  ffi.Pointer<wire_ACDC> new_box_autoadd_acdc_0() {
    return _new_box_autoadd_acdc_0();
  }

  late final _new_box_autoadd_acdc_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_ACDC> Function()>>(
          'new_box_autoadd_acdc_0');
  late final _new_box_autoadd_acdc_0 = _new_box_autoadd_acdc_0Ptr
      .asFunction<ffi.Pointer<wire_ACDC> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
          ffi
          .NativeFunction<ffi.Pointer<wire_uint_8_list> Function(ffi.Int32)>>(
      'new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void drop_opaque_Attestation(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _drop_opaque_Attestation(
      ptr,
    );
  }

  late final _drop_opaque_AttestationPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'drop_opaque_Attestation');
  late final _drop_opaque_Attestation = _drop_opaque_AttestationPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  ffi.Pointer<ffi.Void> share_opaque_Attestation(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _share_opaque_Attestation(
      ptr,
    );
  }

  late final _share_opaque_AttestationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>)>>('share_opaque_Attestation');
  late final _share_opaque_Attestation = _share_opaque_AttestationPtr
      .asFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

final class _Dart_Handle extends ffi.Opaque {}

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_Attestation extends ffi.Struct {
  external ffi.Pointer<ffi.Void> ptr;
}

final class wire_ACDC extends ffi.Struct {
  external wire_Attestation field0;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
