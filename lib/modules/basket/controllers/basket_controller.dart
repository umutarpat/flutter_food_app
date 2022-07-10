import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_model.dart';
import 'package:flutter_food_app/global/services/food/food_service.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class BasketViewBasketController extends GetxController {
  // this is for fetching multiple futures.
  final mainFuture = Future.wait([]).obs;
  // we are creating model data variables so we can use that data in nested widgets.
  RxList<FoodModel> basketData = RxList();

  final basketFuture = Future.value([FoodModel()]).obs;

  @override
  void onInit() {
    super.onInit();
    updateMainFuture();
  }

// We are creating a facade here in order to update getbuilder that has id named 'main' whenever we want it.
  updateMainFuture() {
    getBasket();
    mainFuture.value = Future.wait([basketFuture.value]);
    update(['main']);
  }

// call this on body of futurebuilder in order to assign all future snapshots to data variables.
  assignFutures(List data) {
    final datas = [basketData];
    data.forEach((element) {
      datas[data.indexOf(element)].value = element;
    });
  }

  getBasket() {
    basketFuture.value = getBasketFoodsService();
  }
}
