import 'package:flutter/material.dart';
import 'package:movieapp/presentation/themes/custom_color.dart';
import 'package:movieapp/presentation/views/home/home_view.dart';

class Appku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        primaryColor: CustomColor.ketiga,
      ),
      home: HomeView(),
    );
  }
}
