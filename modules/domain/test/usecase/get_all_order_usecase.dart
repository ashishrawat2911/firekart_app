import 'package:dartz/dartz.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/order_repository.dart';
import 'package:domain/usecases/get_all_orders_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/models/order_model.dart' as Order;

import 'usecase_test.dart';
import 'usecase_test.mocks.dart';

void main() {
  late OrderRepository orderRepository;
  late GetAllOrdersUseCase getAllOrdersUseCase;

  setUpAll(() {
    orderRepository = MockOrderRepository();
    getAllOrdersUseCase = GetAllOrdersUseCase(orderRepository);
    verifyNever(getAllOrdersUseCase.execute()).called(0);
  });

  test('Test Get All Orders Test Passed ', () async {
    List<Order.Order> orders = [mockOrder];
    when(orderRepository.getAllOrders()).thenAnswer((realInvocation) => Future.value(right(orders)));
    final result = await getAllOrdersUseCase.execute();
    verify(orderRepository.getAllOrders()).called(1);
    expect(true, result.isRight());
    expect(result, Right<NetworkError, List<Order.Order>>(orders));
  });

  test('Test Get All Orders Test Failed', () async {
    when(orderRepository.getAllOrders()).thenAnswer((realInvocation) => Future.value(left(NetworkError('', 402))));
    final result = await getAllOrdersUseCase.execute();
    verify(orderRepository.getAllOrders()).called(1);
    expect(true, result.isLeft());
    expect('', (result as Left<NetworkError, List<Order.Order>>).value.errorMessage);
  });
}
