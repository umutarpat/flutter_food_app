import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/global/widgets/global_app_bar.dart';
import 'package:flutter_food_app/modules/basket/controllers/basket_controller.dart';
import 'package:flutter_food_app/modules/basket/widgets/basket_grid/basket_grid.dart';
import 'package:flutter_food_app/modules/home/pages/favorites/controllers/favorites_controller.dart';
import 'package:flutter_food_app/modules/home/pages/favorites/widgets/favorites_grid/favorites_grid.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BasketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: globalAppBar(context, title: "Basket"),
        body: GetBuilder<BasketViewBasketController>(
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
                      return BasketViewGrid();
                    default:
                      return const Center(child: CircularProgressIndicator());
                  }
                },
              );
            }));
  }
}
