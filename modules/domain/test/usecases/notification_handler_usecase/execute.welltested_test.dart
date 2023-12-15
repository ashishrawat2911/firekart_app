import 'execute.welltested_test.mocks.dart';import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/usecases/set_device_token_usecase.dart';
import 'package:domain/usecases/notification_handler_usecase.dart';

@GenerateMocks([SetDeviceTokenUseCase])
void main() {
  late MockSetDeviceTokenUseCase mockSetDeviceTokenUseCase;
  late PushNotificationHandlerUseCase pushNotificationHandlerUseCase;

  setUp(() {
    mockSetDeviceTokenUseCase = MockSetDeviceTokenUseCase();
    pushNotificationHandlerUseCase = PushNotificationHandlerUseCase(mockSetDeviceTokenUseCase);
  });

  group('PushNotificationHandlerUseCase', () {
    test('should call SetDeviceTokenUseCase with empty string', () async {
      // arrange
      when(mockSetDeviceTokenUseCase.execute('')).thenAnswer((_) async => null);

      // act
      await pushNotificationHandlerUseCase.execute(onNotificationData: (data) {});

      // assert
      verify(mockSetDeviceTokenUseCase.execute('')).called(1);
    });

    test('should call onNotificationData with empty map', () async {
      // arrange
      when(mockSetDeviceTokenUseCase.execute('')).thenAnswer((_) async => null);
      var notificationDataCalled = false;

      // act
      await pushNotificationHandlerUseCase.execute(onNotificationData: (data) {
        notificationDataCalled = true;
        expect(data, equals({}));
      });

      // assert
      verify(mockSetDeviceTokenUseCase.execute('')).called(1);
      expect(notificationDataCalled, isFalse);
    });
  });
}