import 'package:movieapp/data/data_sources/remote/movies_data_source.dart';
import 'package:movieapp/data/models/movies_model.dart';

import 'package:movieapp/domain/repositories/movies_repository.dart';

class MoviesRepositoryImplement extends MoviesRepository {
  final MoviesDataSource remoteDataSource;

  MoviesRepositoryImplement(this.remoteDataSource);

  @override
  Future<List<MoviesModel>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      return movies;
    } on Exception {
      return null;
    }
  }
}
