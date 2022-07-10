import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/controllers/initial_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class GlobalNavBar extends StatelessWidget {
  final InitialController _initialController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => WaterDropNavBar(
          onItemSelected: (index) {
            _initialController.currentPage.value = index;
          },
          selectedIndex: _initialController.currentPage.value,
          bottomPadding: 10,
          barItems: [
            BarItem(
              filledIcon: Icons.fastfood,
              outlinedIcon: Icons.fastfood_outlined,
            ),
            BarItem(
                filledIcon: Icons.favorite_rounded,
                outlinedIcon: Icons.favorite_border_rounded),
          ],
        ));
  }
}
