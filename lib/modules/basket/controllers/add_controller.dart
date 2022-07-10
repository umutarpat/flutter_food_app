import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_model.dart';
import 'package:flutter_food_app/global/services/food/food_service.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class BasketViewAddController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  Future addToFavorite(
      {required String docParentId,
      required String docId,
      required bool isFavorite}) {
    return FirebaseFirestore.instance
        .collection('food-category')
        .doc(docParentId)
        .collection("foods")
        .doc(docId)
        .update({"is_favorite": isFavorite});
  }

  Future addToBasket(
      {required String docParentId,
      required String docId,
      required int basketQuantity}) {
    return FirebaseFirestore.instance
        .collection('food-category')
        .doc(docParentId)
        .collection("foods")
        .doc(docId)
        .update({"basket_quantity": basketQuantity});
  }
}
