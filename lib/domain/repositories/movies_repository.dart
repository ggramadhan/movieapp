import 'package:movieapp/domain/entities/movies_entity.dart';

abstract class MoviesRepository {
  Future<List<MoviesEntity>> getTrending();
}
