## Overview

Dart client for generating an `ACDC` object from provided issuer id, data in a `.json` format and sai of the OCA schema.
Currently, only Android is supported. More platforms will be available soon.

## Usage

In order to use the plugin, an `ACDC` object has to be created using `newStaticMethodAcdc`:
```dart=
acdc = await Acdc.newStaticMethodAcdc(
        issuer: "Issuer",
        schema: "EFNWOR0fQbv_J6EL0pJlvCxEpbu4bg1AurHgr_0A7LKc",
        data: """{"hello":"world"}""");
```
As a next step, the generated object has to be serialized to a String using `encodeMethodAcdc`. Finally, `parseStaticMethodAcdc` is used to parse the `ACDC` from string.


## Warning

The plugin uses `.so` files generated for a physical Android device and is reported that it fails to work on an Android Studio simulator. 