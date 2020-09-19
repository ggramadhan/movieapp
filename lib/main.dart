import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movieapp/data/data_sources/remote/movies_data_source.dart';
import 'package:movieapp/presentation/views/appku.dart';

import 'data/core/movie_api_client.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MovieApiClient apiClient = MovieApiClient(Client());
  MoviesDataSource dataSource = MovieDataSourceImplement(apiClient);
  dataSource.getTrending();
  dataSource.getPopular();
  dataSource.getPlayingNow();
  dataSource.getComingSoon();
  runApp(Appku());
}
