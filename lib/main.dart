import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/themes/light_theme.dart';
import 'package:flutter_food_app/modules/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(context),
      home: HomeView(),
    );
  }
}
