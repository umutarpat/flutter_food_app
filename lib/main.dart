import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/firebase_options.dart';
import 'package:flutter_food_app/global/controllers/initial_controller.dart';
import 'package:flutter_food_app/global/themes/light_theme.dart';
import 'package:flutter_food_app/global/utils/routes.dart';
import 'package:flutter_food_app/modules/home/home_view.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      title: 'Foody',
      theme: lightTheme(context),
      initialRoute: '/',
      getPages: routes,
    );
  }
}
