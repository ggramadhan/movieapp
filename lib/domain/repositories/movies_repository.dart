import 'package:dartz/dartz.dart';
import 'package:movieapp/domain/entities/movies_entity.dart';
import 'package:movieapp/domain/entities/movies_error.dart';

abstract class MoviesRepository {
  Future<Either<MoviesError, List<MoviesEntity>>> getTrending();
  Future<Either<MoviesError, List<MoviesEntity>>> getPopular();
  Future<Either<MoviesError, List<MoviesEntity>>> getPlayingNow();
  Future<Either<MoviesError, List<MoviesEntity>>> getComingSoon();
}
