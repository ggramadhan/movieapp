import 'package:dartz/dartz.dart';
import 'package:movieapp/domain/entities/movies_entity.dart';
import 'package:movieapp/domain/entities/movies_error.dart';
import 'package:movieapp/domain/entities/no_params.dart';
import 'package:movieapp/domain/repositories/movies_repository.dart';
import 'package:movieapp/domain/usecases/movies_usecase.dart';

class GetPlayingNow extends MoviesUsecase<List<MoviesEntity>, NoParams> {
  final MoviesRepository repository;

  GetPlayingNow(this.repository);

  Future<Either<MoviesError, List<MoviesEntity>>> call(
      NoParams noParams) async {
    return await repository.getPlayingNow();
  }
}
