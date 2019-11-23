import 'package:devfest_lk_2019/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;

import 'app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.white, // Color for Android
            statusBarBrightness:
                Brightness.dark // Dark == white status bar -- for IOS.
            ),
      );
    }

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.BACKGROUND,
        brightness: Brightness.dark,
        accentColor: Colors.blueAccent,
        fontFamily: 'ProductSans',
        bottomAppBarColor: AppColors.BACKGROUND,
      ),
      home: LoginPage(),
    );
  }
}
