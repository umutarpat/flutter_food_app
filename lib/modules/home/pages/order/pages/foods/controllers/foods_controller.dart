import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_model.dart';
import 'package:flutter_food_app/global/services/food/food_service.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class HomeViewOrderCategoriesFoodsController extends GetxController {
  final mainFuture = Future.wait([]).obs;
  RxList<FoodModel> foodsData = RxList();

  final foodsFuture = Future.value([FoodModel()]).obs;

  @override
  void onInit() {
    super.onInit();
    updateMainFuture();
  }

  updateMainFuture() {
    getFoods();
    mainFuture.value = Future.wait([foodsFuture.value]);
    update(['main']);
  }

  assignFutures(List data) {
    final datas = [foodsData];
    data.forEach((element) {
      datas[data.indexOf(element)].value = element;
    });
  }

  getFoods() {
    foodsFuture.value = getFoodsService();
  }
}
