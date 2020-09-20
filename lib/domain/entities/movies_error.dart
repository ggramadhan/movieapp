import 'package:equatable/equatable.dart';

class MoviesError extends Equatable {
  final String message;

  MoviesError(this.message);

  @override
  List<Object> get props => [message];
}
