import 'package:dartz/dartz.dart';
import 'package:movieapp/domain/entities/movies_error.dart';

abstract class MoviesUsecase<Type, Params> {
  Future<Either<MoviesError, Type>> call(Params params);
}
