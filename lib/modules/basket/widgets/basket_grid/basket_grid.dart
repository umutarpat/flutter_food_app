import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/modules/basket/controllers/basket_controller.dart';
import 'package:flutter_food_app/modules/basket/widgets/basket_grid/widgets/card.dart';
import 'package:get/get.dart';

class BasketViewGrid extends StatelessWidget {
  final BasketViewBasketController _basketController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: _basketController.basketData.isNotEmpty
            ? _basketController.basketData
                .map((e) => BasketViewGridCard(e))
                .toList()
            : []);
  }
}
