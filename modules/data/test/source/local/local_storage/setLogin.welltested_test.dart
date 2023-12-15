import 'setLogin.welltested_test.mocks.dart';import 'package:data/source/local/local_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:core/storage/prefrences_storage.dart';
import 'package:core/storage/secure_storage.dart';
import 'package:package:data/source/local/local_storage.dart';

@GenerateMocks([PreferencesStorage, SecureStorage])
void main() {
  group('setLogin', () {
    test('Successfully sets login status', () async {
      // Arrange
      final mockPreferencesStorage = MockPreferencesStorage();
      final localStorage = LocalStorage(mockPreferencesStorage, MockSecureStorage());
      when(mockPreferencesStorage.setBool(_Const.isLoggedIn, true)).thenAnswer((_) async => null);

      // Act
      await localStorage.setLogin(true);

      // Assert
      verify(mockPreferencesStorage.setBool(_Const.isLoggedIn, true)).called(1);
    });

    test('Throws an exception if set login status fails', () async {
      // Arrange
      final mockPreferencesStorage = MockPreferencesStorage();
      final localStorage = LocalStorage(mockPreferencesStorage, MockSecureStorage());
      when(mockPreferencesStorage.setBool(_Const.isLoggedIn, true)).thenThrow(Exception('Set login status failed'));

      // Act & Assert
      expect(() => localStorage.setLogin(true), throwsException);
    });
  });
}