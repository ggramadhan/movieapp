import 'package:movieapp/data/core/movie_api_client.dart';
import 'package:movieapp/data/models/movies_model.dart';
import 'package:movieapp/data/models/movies_result_model.dart';

abstract class MoviesDataSource {
  Future<List<MoviesModel>> getTrending();
  Future<List<MoviesModel>> getPopular();
  Future<List<MoviesModel>> getPlayingNow();
  Future<List<MoviesModel>> getComingSoon();
}

class MovieDataSourceImplement extends MoviesDataSource {
  final MovieApiClient _client;

  MovieDataSourceImplement(this._client);

  @override
  Future<List<MoviesModel>> getTrending() async {
    final response = await _client.get('trending/movie/day');
    final movies = MoviesResultModel.fromJson(response).movies;
    print(movies);
    return movies;
  }

  @override
  Future<List<MoviesModel>> getPopular() async {
    final response = await _client.get('movie/popular');
    final movies = MoviesResultModel.fromJson(response).movies;
    print(movies);
    return movies;
  }

  @override
  Future<List<MoviesModel>> getComingSoon() async {
    final response = await _client.get('movie/upcoming');
    final movies = MoviesResultModel.fromJson(response).movies;
    print(movies);
    return movies;
  }

  @override
  Future<List<MoviesModel>> getPlayingNow() async {
    final response = await _client.get('movie/now_playing');
    final movies = MoviesResultModel.fromJson(response).movies;
    print(movies);
    return movies;
  }
}
