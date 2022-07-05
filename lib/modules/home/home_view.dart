import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/widgets/global_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(context),
      body: Column(),
    );
  }
}
