import 'dart:ffi';
import 'dart:io';

import 'bridge_generated.dart';

class Acdc {
  static const base = 'acdcdart';
  static final path = Platform.isWindows ? '$base.dll' : 'lib$base.so';
  static final dylib = Platform.isIOS
      ? DynamicLibrary.process()
      : Platform.isMacOS
          ? DynamicLibrary.executable()
          : DynamicLibrary.open(path);
  static final api = DartImpl(dylib);

  static Future<ACDC> issuePublicUntargetedStaticMethodAcdc(
      {required String issuer,
      required String schema,
      required String attributes,
      dynamic hint}) async {
    return await api.issuePublicUntargetedStaticMethodAcdc(
        issuer: issuer, schema: schema, attributes: attributes);
  }

  static Future<ACDC> issuePublicTargetedStaticMethodAcdc(
      {required String issuer,
      required String target,
      required String schema,
      required String attributes,
      dynamic hint}) async {
    return await api.issuePublicTargetedStaticMethodAcdc(
        issuer: issuer, target: target, schema: schema, attributes: attributes);
  }

  static Future<ACDC> issuePrivateUntargetedStaticMethodAcdc(
      {required String issuer,
      required String schema,
      required String attributes,
      dynamic hint}) async {
    return await api.issuePrivateUntargetedStaticMethodAcdc(
        issuer: issuer, schema: schema, attributes: attributes);
  }

  static Future<ACDC> issuePrivateTargetedStaticMethodAcdc(
      {required String issuer,
      required String target,
      required String schema,
      required String attributes,
      dynamic hint}) async {
    return await api.issuePrivateTargetedStaticMethodAcdc(
        issuer: issuer, target: target, schema: schema, attributes: attributes);
  }

  static Future<String> encodeMethodAcdc(
      {required ACDC that, dynamic hint}) async {
    return await api.encodeMethodAcdc(that: that);
  }

  static Future<String> getIssuerMethodAcdc(
      {required ACDC that, dynamic hint}) async {
    return await api.getIssuerMethodAcdc(that: that);
  }

  static Future<String> getAttributesMethodAcdc(
      {required ACDC that, dynamic hint}) async {
    return await api.getAttributesMethodAcdc(that: that);
  }

  static Future<String> getSchemaMethodAcdc(
      {required ACDC that, dynamic hint}) async {
    return await api.getSchemaMethodAcdc(that: that);
  }

  static Future<ACDC> parseStaticMethodAcdc(
      {required String stream, dynamic hint}) async {
    return await api.parseStaticMethodAcdc(stream: stream);
  }
}
