import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeViewOrder extends StatelessWidget {
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _homeController.mainFuture.value,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.active:
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());
          case ConnectionState.done:
            if (snapshot.hasError) {
              return Container();
            }
            _homeController.assignFutures((snapshot.data! as List));

            return Text(_homeController.foodCategoryData.first.name ?? '');
          default:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
