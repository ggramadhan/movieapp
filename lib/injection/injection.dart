import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:movieapp/data/core/movie_api_client.dart';
import 'package:movieapp/data/data_sources/remote/movies_data_source.dart';
import 'package:movieapp/data/repositories/movie_repository_implement.dart';
import 'package:movieapp/domain/repositories/movies_repository.dart';
import 'package:movieapp/domain/usecases/get_coming_soon.dart';
import 'package:movieapp/domain/usecases/get_playing_now.dart';
import 'package:movieapp/domain/usecases/get_popular.dart';
import 'package:movieapp/domain/usecases/get_trending.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Client>(() => Client());
  getItInstance.registerLazySingleton<MovieApiClient>(
      () => MovieApiClient(getItInstance()));

  getItInstance.registerLazySingleton<MoviesDataSource>(
      () => MovieDataSourceImplement(getItInstance()));

  getItInstance.registerLazySingleton<MoviesRepository>(
      () => MoviesRepositoryImplement(getItInstance()));

  //DI Usecases
  getItInstance
      .registerLazySingleton<GetTrending>(() => GetTrending(getItInstance()));
  getItInstance
      .registerLazySingleton<GetPopular>(() => GetPopular(getItInstance()));
  getItInstance.registerLazySingleton<GetComingSoon>(
      () => GetComingSoon(getItInstance()));
  getItInstance.registerLazySingleton<GetPlayingNow>(
      () => GetPlayingNow(getItInstance()));
}
