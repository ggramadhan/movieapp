import 'package:dartz/dartz.dart';
import 'package:movieapp/data/data_sources/remote/movies_data_source.dart';
import 'package:movieapp/data/models/movies_model.dart';
import 'package:movieapp/domain/entities/movies_entity.dart';
import 'package:movieapp/domain/entities/movies_error.dart';

import 'package:movieapp/domain/repositories/movies_repository.dart';

class MoviesRepositoryImplement extends MoviesRepository {
  final MoviesDataSource remoteDataSource;

  MoviesRepositoryImplement(this.remoteDataSource);

  @override
  Future<Either<MoviesError, List<MoviesModel>>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      return Right(movies);
    } on Exception {
      return Left(MoviesError('Something Wrong...'));
    }
  }

  @override
  Future<Either<MoviesError, List<MoviesEntity>>> getPlayingNow() async {
    try {
      final movies = await remoteDataSource.getPlayingNow();
      return Right(movies);
    } on Exception {
      return Left(MoviesError('Something Wrong...'));
    }
  }

  @override
  Future<Either<MoviesError, List<MoviesEntity>>> getPopular() async {
    try {
      final movies = await remoteDataSource.getPopular();
      return Right(movies);
    } on Exception {
      return Left(MoviesError('Something Wrong...'));
    }
  }

  @override
  Future<Either<MoviesError, List<MoviesEntity>>> getComingSoon() async {
    try {
      final movies = await remoteDataSource.getComingSoon();
      return Right(movies);
    } on Exception {
      return Left(MoviesError('Something Wrong...'));
    }
  }
}
