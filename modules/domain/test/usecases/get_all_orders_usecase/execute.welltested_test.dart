import 'package:dartz/dartz.dart' hide Order;
import 'package:domain/models/order_model.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/order_repository.dart';
import 'package:domain/usecases/get_all_orders_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'execute.welltested_test.mocks.dart';

@GenerateMocks([OrderRepository])
void main() {
  late GetAllOrdersUseCase useCase;
  late MockOrderRepository mockOrderRepository;

  setUp(() {
    mockOrderRepository = MockOrderRepository();
    useCase = GetAllOrdersUseCase(mockOrderRepository);
  });

  final tOrder = Order(
    id: 1,
    price: 100,
    orderedAt: '2022-01-01',
    orderStatus: 'Delivered',
    paymentId: 'PAY_123',
    signature: 'SIG_123',
  );

  final tOrderList = [tOrder];

  test('should get a list of orders from the repository', () async {
    // Arrange
    when(mockOrderRepository.getAllOrders())
        .thenAnswer((_) async => Right(tOrderList));

    // Act
    final result = await useCase.execute();

    // Assert
    expect(result, Right(tOrderList));
    verify(mockOrderRepository.getAllOrders());
    verifyNoMoreInteractions(mockOrderRepository);
  });

  test('should return a NetworkError when repository throws an exception',
      () async {
    // Arrange
    final tNetworkError = NetworkError('Failed to fetch orders', 500);
    when(mockOrderRepository.getAllOrders())
        .thenAnswer((_) async => Left(tNetworkError));

    // Act
    final result = await useCase.execute();

    // Assert
    expect(result, Left(tNetworkError));
    verify(mockOrderRepository.getAllOrders());
    verifyNoMoreInteractions(mockOrderRepository);
  });

  test('should return an empty list when repository returns an empty list',
      () async {
    // Arrange
    final tEmptyList = <Order>[];
    when(mockOrderRepository.getAllOrders())
        .thenAnswer((_) async => Right(tEmptyList));

    // Act
    final result = await useCase.execute();

    // Assert
    expect(result, Right(tEmptyList));
    verify(mockOrderRepository.getAllOrders());
    verifyNoMoreInteractions(mockOrderRepository);
  });
}
