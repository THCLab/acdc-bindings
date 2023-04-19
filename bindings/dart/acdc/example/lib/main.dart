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
    acdc = await Acdc.newStaticMethodAcdc(
        issuer: "Issuer",
        schema: "EFNWOR0fQbv_J6EL0pJlvCxEpbu4bg1AurHgr_0A7LKc",
        data: """{"hello":"world"}""");
    encoded = await Acdc.encodeMethodAcdc(that: acdc);
    loaded = await Acdc.parseStaticMethodAcdc(stream: encoded);
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
                  //print(await Acdc.parseStaticMethodAcdc(stream: '{"d":"digest"}'));
                  await Acdc.getIssuerMethodAcdc(that: acdc)
                      .then((value) => setState(() {
                            issuer = value;
                          }));
                },
                child: Text("Get issuer")),
            issuer.isNotEmpty ? Text("issuer: $issuer") : Container(),
            TextButton(
                onPressed: () async {
                  await Acdc.getDataMethodAcdc(that: acdc)
                      .then((value) => setState(() {
                            data = value;
                          }));
                },
                child: Text("Get data")),
            data.isNotEmpty ? Text("data: $data") : Container(),
            TextButton(
                onPressed: () async {
                  await Acdc.getSchemaMethodAcdc(that: acdc)
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
