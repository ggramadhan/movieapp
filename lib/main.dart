import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movieapp/data/data_sources/remote/movies_data_source.dart';
import 'package:movieapp/data/repositories/movie_repository_implement.dart';
import 'package:movieapp/domain/entities/movies_entity.dart';
import 'package:movieapp/domain/entities/movies_error.dart';
import 'package:movieapp/domain/entities/no_params.dart';
import 'package:movieapp/domain/repositories/movies_repository.dart';
import 'package:movieapp/domain/usecases/get_trending.dart';
import 'package:movieapp/presentation/views/appku.dart';

import 'data/core/movie_api_client.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MovieApiClient apiClient = MovieApiClient(Client());
  MoviesDataSource remoteDataSource = MovieDataSourceImplement(apiClient);
  MoviesRepository moviesRepository =
      MoviesRepositoryImplement(remoteDataSource);
  GetTrending getTrending = GetTrending(moviesRepository);
  final Either<MoviesError, List<MoviesEntity>> eitherResp =
      await getTrending(NoParams());
  eitherResp.fold((l) => print(l), (r) => print(r));
  runApp(Appku());
}
