import 'package:dartz/dartz.dart';
import '../faliure/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
