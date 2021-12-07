flutter clean
rm pubspec.lock
flutter pub get
flutter build ios --release --no-codesign
flutter build apk
flutter clean
flutter pub get