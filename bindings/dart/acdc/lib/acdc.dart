import 'dart:ffi';
import 'dart:io';

import 'bridge_generated.dart';

class Acdc {
  static const base = 'acdcdart';
  static final path = Platform.isWindows? '$base.dll' : 'lib$base.so';
  static late final dylib = Platform.isIOS
      ? DynamicLibrary.process()
      : Platform.isMacOS
      ? DynamicLibrary.executable()
      : DynamicLibrary.open(path);
  static final api = DartImpl(dylib);

  static Future<ACDC> newStaticMethodAcdc(
      {required String issuer,
      required String schema,
      required String data,
      dynamic hint}) async {
    return await api.newStaticMethodAcdc(
        issuer: issuer, schema: schema, attributes: data);
  }

  static Future<String> encodeMethodAcdc(
      {required ACDC that, dynamic hint}) async {
    return await api.encodeMethodAcdc(that: that);
  }

  static Future<String> getIssuerMethodAcdc(
      {required ACDC that, dynamic hint}) async {
    return await api.getIssuerMethodAcdc(that: that);
  }

  static Future<String> getDataMethodAcdc(
      {required ACDC that, dynamic hint}) async {
    return await api.getDataMethodAcdc(that: that);
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
