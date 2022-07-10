import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_model.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/global/widgets/global_app_bar.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/categories/controllers/home_controller.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/foods/controllers/foods_controller.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/foods/widgets/foods_grid/foods_grid.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeViewOrderCategoriesFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: globalAppBar(
          context,
          actions: [
            GestureDetector(
                onTap: () {
                  Get.offNamed("/basket");
                },
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: FaIcon(FontAwesomeIcons.basketShopping)))
          ],
        ),
        body: GetBuilder<HomeViewOrderCategoriesFoodsController>(
            id: 'main',
            builder: (controller) {
              return FutureBuilder(
                future: controller.mainFuture.value,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.active:
                    case ConnectionState.waiting:
                      return const Center(child: CircularProgressIndicator());
                    case ConnectionState.done:
                      if (snapshot.hasError) {
                        return Container();
                      }
                      controller.assignFutures((snapshot.data! as List));
                      return HomeViewOrderCategoriesFoodsGrid();
                    default:
                      return const Center(child: CircularProgressIndicator());
                  }
                },
              );
            }));
  }
}
