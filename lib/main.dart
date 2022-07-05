import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/controllers/initial_controller.dart';
import 'package:flutter_food_app/global/themes/light_theme.dart';
import 'package:flutter_food_app/modules/home/home_view.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// init permanent controller here in order to have a global unkilliable controller
  final InitialController _initialController =
      Get.put(InitialController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme(context),
      home: HomeView(),
    );
  }
}
