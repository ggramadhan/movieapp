import 'package:flutter/material.dart';
import 'package:movieapp/presentation/views/home/home_view.dart';

class Appku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App ',
      // theme: ThemeData(
      //   primarySwatch: Colors.black,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: HomeView(),
    );
  }
}
