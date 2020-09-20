import 'package:movieapp/domain/entities/movies_entity.dart';
import 'package:movieapp/domain/repositories/movies_repository.dart';

class GetTrending {
  final MoviesRepository repository;

  GetTrending(this.repository);

  Future<List<MoviesEntity>> call() async {
    return await repository.getTrending();
  }
}
