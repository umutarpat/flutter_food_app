import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/foods/controllers/foods_controller.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/foods/widgets/foods_grid/widgets/card.dart';
import 'package:get/get.dart';

class HomeViewOrderCategoriesFoodsGrid extends StatelessWidget {
  final HomeViewOrderCategoriesFoodsController _foodsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: _foodsController.foodsData.isNotEmpty
            ? _foodsController.foodsData
                .map((e) => HomeViewOrderCategoriesFoodsGridCard(e))
                .toList()
            : []);
  }
}
