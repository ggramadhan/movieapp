import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class MoviesEntity extends Equatable {
  final int id;
  final String title;
  final String posterPath;
  final String backdropPath;
  final num voteAverage;
  final String releaseDate;
  final String overview;

  MoviesEntity({
    @required this.id,
    @required this.title,
    @required this.posterPath,
    @required this.backdropPath,
    @required this.voteAverage,
    @required this.releaseDate,
    this.overview,
  }) : assert(id != null, 'movie id must be null');

  @override
  List<Object> get props => [id, title];

  @override
  bool get stringify => true;
}
