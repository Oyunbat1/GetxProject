# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project state

This is a freshly scaffolded Flutter app (`getproject`) for learning/experimenting with the **GetX** package — `get` is declared in `pubspec.yaml` but is not yet used anywhere. `lib/` currently contains only `main.dart`.

Two things are intentionally inconsistent with a clean scaffold and worth knowing before running anything:
- `lib/main.dart` is incomplete: the `Scaffold` body `Column` has no `children` and uses `mainAxisAlignment: .center` (dot-shorthand that will not compile as written). Expect to finish/fix this file.
- `test/widget_test.dart` is the default counter smoke test and references a counter UI (`Icons.add`, text `'0'`/`'1'`) that does not exist in `main.dart`, so it will fail until updated.

## Commands

```bash
flutter pub get                  # install dependencies
flutter run                      # run on the default connected device/emulator
flutter run -d chrome            # run on web; also: -d macos, -d windows, -d linux
flutter analyze                  # static analysis / lint (uses analysis_options.yaml)
flutter test                     # run all tests
flutter test test/widget_test.dart            # run a single test file
flutter test --name "smoke test"              # run tests matching a name
flutter build apk | ios | web | macos         # release builds per platform
```

SDK constraint: Dart `^3.12.1` (see `pubspec.yaml`).

## Lint

Linting uses `package:flutter_lints/flutter.yaml` via `analysis_options.yaml`. Per-project rule overrides go in the `linter.rules:` section of that file; suppress locally with `// ignore: <rule>` or `// ignore_for_file: <rule>`.

## Architecture notes

The app uses the standard Flutter entrypoint: `main()` → `runApp(MyApp)` → `MaterialApp` → `MyHomePage`. As GetX is adopted, expect the conventional GetX structure to emerge (controllers extending `GetxController`, `GetMaterialApp` replacing `MaterialApp` for routing/state, `Get.put`/`Get.find` for dependency injection, `Obx`/`GetX` widgets for reactive UI). Cross-platform runners exist for android, ios, web, macos, windows, and linux.
