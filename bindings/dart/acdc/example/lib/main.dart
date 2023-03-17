import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:acdc/acdc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _acdcPlugin = Acdc();
  late var acdc;
  late var encoded;
  late var loaded;
  String issuer = "";
  String data = "";
  String schema = "";

  @override
  void initState() {
    super.initState();
    asyncInit();
  }

  Future<void> asyncInit() async {
    acdc = await _acdcPlugin.newStaticMethodAcdc(
        issuer: "Issuer",
        schema: "EFNWOR0fQbv_J6EL0pJlvCxEpbu4bg1AurHgr_0A7LKc",
        data: """{"hello":"world"}""");
    encoded = await _acdcPlugin.encodeMethodAcdc(that: acdc);
    loaded = await _acdcPlugin.parseStaticMethodAcdc(stream: encoded);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ACDC example'),
        ),
        body: Center(
            child: Column(
          children: [
            TextButton(
                onPressed: () async {
                  await _acdcPlugin
                      .getIssuerMethodAcdc(that: acdc)
                      .then((value) => setState(() {
                            issuer = value;
                          }));
                },
                child: Text("Get issuer")),
            issuer.isNotEmpty ? Text("issuer: $issuer") : Container(),
            TextButton(
                onPressed: () async {
                  await _acdcPlugin
                      .getDataMethodAcdc(that: acdc)
                      .then((value) => setState(() {
                            data = value;
                          }));
                },
                child: Text("Get data")),
            data.isNotEmpty ? Text("data: $data") : Container(),
            TextButton(
                onPressed: () async {
                  await _acdcPlugin
                      .getSchemaMethodAcdc(that: acdc)
                      .then((value) => setState(() {
                            schema = value;
                          }));
                },
                child: Text("Get schema")),
            schema.isNotEmpty ? Text("schema: $schema") : Container(),
          ],
        )),
      ),
    );
  }
}
