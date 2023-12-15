import 'package:core/state/result_state.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:domain/models/order_model.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/usecases/get_all_orders_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:presentation/features/order/view_model/my_orders_cubit.dart';

import 'fetchOrders.welltested_test.mocks.dart';

@GenerateMocks([GetAllOrdersUseCase, NetworkError, Order])
void main() {
  late MyOrdersCubit myOrdersCubit;
  late MockGetAllOrdersUseCase mockGetAllOrdersUseCase;

  setUp(() {
    mockGetAllOrdersUseCase = MockGetAllOrdersUseCase();
    myOrdersCubit = MyOrdersCubit(mockGetAllOrdersUseCase);
  });

  final tOrderList = [MockOrder(), MockOrder()];

  test(
      'should emit ResultState.loading and ResultState.data on successful fetchOrders call',
      () async {
    // arrange
    when(mockGetAllOrdersUseCase.execute())
        .thenAnswer((_) async => Right(tOrderList));

    // assert later
    final expected = [
      const ResultState.loading(),
      ResultState.data(data: tOrderList),
    ];
    expectLater(myOrdersCubit.stream, emitsInOrder(expected));

    // act
    await myOrdersCubit.fetchOrders();
  });

  test(
      'should emit ResultState.loading and ResultState.error on failed fetchOrders call',
      () async {
    // arrange
    final tNetworkError = MockNetworkError();
    when(tNetworkError.errorMessage).thenReturn('Error occurred');
    when(mockGetAllOrdersUseCase.execute())
        .thenAnswer((_) async => Left(tNetworkError));

    // assert later
    final expected = [
      const ResultState.loading(),
      ResultState.error(error: 'Error occurred'),
    ];
    expectLater(myOrdersCubit.stream, emitsInOrder(expected));

    // act
    await myOrdersCubit.fetchOrders();
  });
}
