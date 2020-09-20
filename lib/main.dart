import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:pedantic/pedantic.dart';
import 'package:movieapp/domain/entities/movies_entity.dart';
import 'package:movieapp/domain/entities/movies_error.dart';
import 'package:movieapp/domain/entities/no_params.dart';
import 'package:movieapp/domain/usecases/get_trending.dart';
import 'package:movieapp/presentation/views/appku.dart';
import 'injection/injection.dart ' as getIt;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(getIt.init());
  GetTrending getTrending = getIt.getItInstance<GetTrending>();
  final Either<MoviesError, List<MoviesEntity>> eitherResp =
      await getTrending(NoParams());
  eitherResp.fold((l) => print(l), (r) => print(r));
  runApp(Appku());
}
