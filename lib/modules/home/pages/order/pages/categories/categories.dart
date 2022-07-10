import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/categories/controllers/home_controller.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/categories/widgets/categories_grid/categories_grid.dart';
import 'package:get/get.dart';

class HomeViewOrderCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewOrderCategoriesController>(
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

                return HomeViewOrderCategoriesGrid();
              default:
                return const Center(child: CircularProgressIndicator());
            }
          },
        );
      },
    );
  }
}
