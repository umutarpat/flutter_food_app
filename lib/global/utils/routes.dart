import 'package:flutter_food_app/global/bindings/home/home_binding.dart';
import 'package:flutter_food_app/modules/home/home_view.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/foods/foods.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => HomeView(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: '/foods',
    page: () => HomeViewOrderCategoriesFoods(),
  ),
];
