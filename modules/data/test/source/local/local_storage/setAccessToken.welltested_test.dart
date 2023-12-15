import 'setAccessToken.welltested_test.mocks.dart';import 'package:data/source/local/local_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:core/storage/prefrences_storage.dart';
import 'package:core/storage/secure_storage.dart';

@GenerateMocks([PreferencesStorage, SecureStorage])
void main() {
  group('setAccessToken', () {
    test('Successfully sets the access token', () async {
      // Arrange
      final mockPreferencesStorage = MockPreferencesStorage();
      final mockSecureStorage = MockSecureStorage();
      final localStorage = LocalStorage(mockPreferencesStorage, mockSecureStorage);
      const testToken = 'testToken';
      when(mockSecureStorage.secureSet(any, any)).thenAnswer((_) async => null);

      // Act
      await localStorage.setAccessToken(testToken);

      // Assert
      verify(mockSecureStorage.secureSet(_Const.token, testToken)).called(1);
    });

    test('Throws an exception if setting access token fails', () async {
      // Arrange
      final mockPreferencesStorage = MockPreferencesStorage();
      final mockSecureStorage = MockSecureStorage();
      final localStorage = LocalStorage(mockPreferencesStorage, mockSecureStorage);
      const testToken = 'testToken';
      when(mockSecureStorage.secureSet(any, any)).thenThrow(Exception('Setting access token failed'));

      // Act & Assert
      expect(() => localStorage.setAccessToken(testToken), throwsException);
    });
  });
}