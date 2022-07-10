import 'package:flutter_food_app/modules/home/controllers/home_controller.dart';
import 'package:flutter_food_app/modules/home/pages/favorites/controllers/favorites_controller.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/foods/controllers/foods_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);

    Get.lazyPut<HomeViewOrderCategoriesFoodsController>(
        () => HomeViewOrderCategoriesFoodsController(),
        fenix: true);
    Get.lazyPut<HomeViewFavoritesController>(
        () => HomeViewFavoritesController(),
        fenix: true);
  }
}
