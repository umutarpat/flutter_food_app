import 'package:flutter_food_app/modules/basket/controllers/add_controller.dart';
import 'package:flutter_food_app/modules/basket/controllers/basket_controller.dart';
import 'package:flutter_food_app/modules/home/controllers/add_controller.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/categories/controllers/home_controller.dart';
import 'package:flutter_food_app/modules/home/pages/favorites/controllers/favorites_controller.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/foods/controllers/foods_controller.dart';
import 'package:get/get.dart';

class BasketBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BasketViewBasketController>(() => BasketViewBasketController(),
        fenix: true);
    Get.lazyPut<BasketViewAddController>(() => BasketViewAddController(),
        fenix: true);
  }
}
