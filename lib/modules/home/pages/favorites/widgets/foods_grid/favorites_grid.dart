import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/modules/home/pages/favorites/controllers/favorites_controller.dart';
import 'package:flutter_food_app/modules/home/pages/favorites/widgets/foods_grid/widgets/card.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/foods/controllers/foods_controller.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/foods/widgets/foods_grid/widgets/card.dart';
import 'package:get/get.dart';

class HomeViewFavoritesGrid extends StatelessWidget {
  final HomeViewFavoritesController _favoritesController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: _favoritesController.favoritesData.isNotEmpty
            ? _favoritesController.favoritesData
                .map((e) => HomeViewFavoritesGridCard(e))
                .toList()
            : []);
  }
}
