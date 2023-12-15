import 'close.welltested_test.mocks.dart';import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/cart_usecase.dart';

@GenerateMocks([CartRepository])
void main() {
  late CartUseCase useCase;
  late MockCartRepository mockCartRepository;

  setUp(() {
    mockCartRepository = MockCartRepository();
    useCase = CartUseCase(mockCartRepository);
  });

  group('close', () {
    test('should close the cart controller without throwing', () {
      expect(() => useCase.close(), returnsNormally);
    });

    test('should throw a StateError when trying to close the cart controller more than once', () {
      useCase.close();

      expect(() => useCase.close(), throwsA(isA<StateError>()));
    });
  });
}