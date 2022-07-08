import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/services/food/food_service.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final mainFuture = Future.wait([]).obs;
  RxList<FoodCategoryModel> foodCategoryData = RxList();

  late final Future<List<FoodCategoryModel>> foodCategoryFuture;

  // final foodCategoryFuture = Future.value(List<FoodCategoryModel>).obs;

  @override
  void onInit() {
    super.onInit();
    updateMainFuture();
  }

  updateMainFuture() {
    getCategories();
    mainFuture.value = Future.wait([foodCategoryFuture]);
    update(['main']);
  }

  assignFutures(List data) {
    final datas = [foodCategoryData];
    data.forEach((element) {
      datas[data.indexOf(element)].value = element;
    });
  }

  getCategories() {
    foodCategoryFuture = getCategoriesService();
  }
}
