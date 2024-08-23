import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/faliure/failures.dart';
import 'package:ecommerce_app/feautures/domain/entities/product.dart';
import 'package:ecommerce_app/feautures/domain/repositories/product_repository.dart';
import 'package:ecommerce_app/feautures/domain/use_cases/create_product_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockProductRepository extends Mock implements ProductRepository {}

void main() {
  late CreateProductUsecase usecase;
  late MockProductRepository mockProductRepository;

  setUp(() {
    mockProductRepository = MockProductRepository();
    usecase = CreateProductUsecase(mockProductRepository);
  });

  final Product tProduct = Product(
    id: '1',
    name: 'Test Product',
    description: 'Test Description',
    imageUrl: 'Test Image URL',
    price: 100.0,
  );

  test('should create a product through the repository', () async {
    when(mockProductRepository.createProduct(tProduct))
        .thenAnswer((_) async => Right(null));

    final result = await usecase(tProduct);

    expect(result, Right(null));
    verify(mockProductRepository.createProduct(tProduct));
    verifyNoMoreInteractions(mockProductRepository);
  });

  test('should return a failure when the repository fails', () async {
    when(mockProductRepository.createProduct(tProduct))
        .thenAnswer((_) async => Left(ServerFailure()));

    final result = await usecase(tProduct);

    expect(result, Left(ServerFailure()));
    verify(mockProductRepository.createProduct(tProduct));
    verifyNoMoreInteractions(mockProductRepository);
  });
}
