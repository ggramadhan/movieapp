import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: true);
    return Scaffold(
      body: Center(
        child: Text('HOME VIEW GAN'),
      ),
    );
  }
}
