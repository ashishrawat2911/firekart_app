import 'carts.welltested_test.mocks.dart';import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/cart_usecase.dart';

@GenerateMocks([CartRepository])
void main() {
  late CartUseCase cartUseCase;
  late MockCartRepository mockCartRepository;
  late StreamController<List<Cart>> cartController;

  setUp(() {
    mockCartRepository = MockCartRepository();
    cartController = StreamController<List<Cart>>.broadcast();
    cartUseCase = CartUseCase(mockCartRepository);
  });

  tearDown(() {
    cartController.close();
  });

  group('carts', () {
    test('should return Stream<List<Cart>> when carts is called', () {
      when(cartUseCase.carts()).thenAnswer((_) => cartController.stream);

      final result = cartUseCase.carts();

      expect(result, isA<Stream<List<Cart>>>());
    });
  });
}