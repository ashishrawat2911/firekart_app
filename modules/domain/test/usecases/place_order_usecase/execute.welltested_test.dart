import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:domain/models/network.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/models/add_order_model.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/order_repository.dart';
import 'package:domain/usecases/place_order_usecase.dart';

@GenerateMocks([OrderRepository])
void main() {
  late PlaceOrderUseCase useCase;
  late MockOrderRepository mockOrderRepository;

  setUp(() {
    mockOrderRepository = MockOrderRepository();
    useCase = PlaceOrderUseCase(mockOrderRepository);
  });

  group('execute', () {
    final order = AddOrder(
      orderItems: [],
      price: 100,
      orderedAt: '2022-01-01',
      orderStatus: 'test_status',
      paymentId: 'test_payment_id',
      signature: 'test_signature',
    );

    final emptyEntity = EmptyEntity(true, 'Order placed successfully');

    test('should return EmptyEntity when order is placed successfully',
        () async {
      when(mockOrderRepository.placeOrder(order))
          .thenAnswer((_) async => Right(emptyEntity));

      final result = await useCase.execute(order);

      expect(result, equals(Right(emptyEntity)));
    });

    test('should return NetworkError when order placement fails', () async {
      final networkError = NetworkError('Error placing order', 500);

      when(mockOrderRepository.placeOrder(order))
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute(order);

      expect(result, equals(Left(networkError)));
    });
  });
}