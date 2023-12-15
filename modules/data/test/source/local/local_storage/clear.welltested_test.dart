import 'clear.welltested_test.mocks.dart';import 'package:data/source/local/local_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:core/storage/prefrences_storage.dart';
import 'package:core/storage/secure_storage.dart';

@GenerateMocks([PreferencesStorage, SecureStorage])
void main() {
  group('LocalStorage', () {
    test('clear method should call clearAll on both PreferencesStorage and SecureStorage', () {
      // Arrange
      final mockPreferencesStorage = MockPreferencesStorage();
      final mockSecureStorage = MockSecureStorage();
      final localStorage = LocalStorage(mockPreferencesStorage, mockSecureStorage);

      // Act
      localStorage.clear();

      // Assert
      verify(mockPreferencesStorage.clearAll()).called(1);
      verify(mockSecureStorage.clearAll()).called(1);
    });
  });
}