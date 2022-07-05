import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/controllers/initial_controller.dart';
import 'package:flutter_food_app/global/widgets/global_app_bar.dart';
import 'package:flutter_food_app/global/widgets/global_nav_bar.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class HomeView extends StatelessWidget {
  final InitialController _initialController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: globalAppBar(context),
          body: _initialController.currentPage.value == 0
              ? Container(
                  color: Colors.red,
                )
              : Container(
                  color: Colors.green,
                ),
          bottomNavigationBar: GlobalNavBar(),
        ));
  }
}
