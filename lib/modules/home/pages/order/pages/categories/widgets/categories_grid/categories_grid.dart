import 'package:flutter/material.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/categories/controllers/home_controller.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/categories/widgets/categories_grid/widgets/card.dart';
import 'package:get/instance_manager.dart';

class HomeViewOrderCategoriesGrid extends StatelessWidget {
  final HomeViewOrderCategoriesController _categoriesController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: _categoriesController.foodCategoryData.value
            .map((e) => HomeViewOrderCategoriesGridCard(e))
            .toList());
  }
}
