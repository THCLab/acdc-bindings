
## Building bindings

## Generating `.dart` files

- `cargo install -f flutter_rust_bridge_codegen`
- From `dart/acdc` folder run:
	
	`flutter pub get`

	`flutter_rust_bridge_codegen --rust-input ../src/api.rs --dart-output lib/bridge_generated.dart --c-output lib/bridge_generated.h`

### Android

- `export ANDROID_NDK_HOME="$HOME/path/to/ndk""`
- From `dart` folder run:
	
	`cargo ndk -o acdc/android/src/main/jniLibs build --release`