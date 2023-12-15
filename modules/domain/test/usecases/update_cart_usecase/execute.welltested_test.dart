import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/update_cart_usecase.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/models/network.dart';

@GenerateMocks([CartRepository])
void main() {
  late UpdateCartUseCase useCase;
  late MockCartRepository mockCartRepository;

  setUp(() {
    mockCartRepository = MockCartRepository();
    useCase = UpdateCartUseCase(mockCartRepository);
  });

  group('execute', () {
    const productId = 1;
    const quantity = 2;

    final emptyEntity = EmptyEntity(true, 'Success');

    test('should return EmptyEntity when cart update is successful', () async {
      when(mockCartRepository.updateCart(productId, quantity))
          .thenAnswer((_) async => Right(emptyEntity));

      final result = await useCase.execute(productId, quantity);

      expect(result, equals(Right(emptyEntity)));
    });

    test('should return NetworkError when cart update fails', () async {
      final networkError = NetworkError('Error updating cart', 500);

      when(mockCartRepository.updateCart(productId, quantity))
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute(productId, quantity);

      expect(result, equals(Left(networkError)));
    });
  });
}