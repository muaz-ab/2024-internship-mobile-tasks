import 'package:dartz/dartz.dart';
import '../../../core/faliure/failures.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class CreateProductUsecase {
  final ProductRepository repository;

  CreateProductUsecase(this.repository);

  Future<Either<Failure, void>> call(Product product) async {
    return await repository.createProduct(product);
  }
}
