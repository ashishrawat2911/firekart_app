flutter analyze
flutter pub get
flutter packages pub run build_runner watch --delete-conflicting-outputs
flutter gen-l10n
flutter test --no-pub --coverage
flutter build apk
flutter build ios --release --no-codesign