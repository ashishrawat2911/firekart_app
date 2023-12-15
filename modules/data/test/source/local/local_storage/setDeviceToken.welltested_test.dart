import 'setDeviceToken.welltested_test.mocks.dart';import 'package:data/source/local/local_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:package:data/source/local/local_storage.dart';
import 'package:core/storage/prefrences_storage.dart';
import 'package:core/storage/secure_storage.dart';

@GenerateMocks([PreferencesStorage, SecureStorage, LocalStorage])
void main() {
  group('setDeviceToken', () {
    test('Successfully sets the device token', () async {
      // Arrange
      final mockPreferencesStorage = MockPreferencesStorage();
      final mockSecureStorage = MockSecureStorage();
      final localStorage = LocalStorage(mockPreferencesStorage, mockSecureStorage);
      const testDeviceToken = 'testDeviceToken';
      when(mockPreferencesStorage.setString(_Const.deviceToken, testDeviceToken)).thenAnswer((_) async => null);

      // Act
      await localStorage.setDeviceToken(testDeviceToken);

      // Assert
      verify(mockPreferencesStorage.setString(_Const.deviceToken, testDeviceToken)).called(1);
    });

    test('Throws an exception if setting device token fails', () async {
      // Arrange
      final mockPreferencesStorage = MockPreferencesStorage();
      final mockSecureStorage = MockSecureStorage();
      final localStorage = LocalStorage(mockPreferencesStorage, mockSecureStorage);
      const testDeviceToken = 'testDeviceToken';
      when(mockPreferencesStorage.setString(_Const.deviceToken, testDeviceToken)).thenThrow(Exception('Setting device token failed'));

      // Act & Assert
      expect(() => localStorage.setDeviceToken(testDeviceToken), throwsException);
    });
  });
}