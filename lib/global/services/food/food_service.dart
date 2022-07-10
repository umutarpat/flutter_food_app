import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_model.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:get/get.dart';

Future<List<FoodCategoryModel>> getCategoriesService() async {
  final snapshot =
      await FirebaseFirestore.instance.collection('food-category').get();

  List<FoodCategoryModel> list =
      snapshot.docs.map((doc) => FoodCategoryModel.fromJson(
          // add doc id to model
          doc.data()..addAll({"doc_id": doc.id}))).toList();

  return list;
}

Future<List<FoodModel>> getFoodsService() async {
  final snapshot = await FirebaseFirestore.instance
      .collection('food-category')

      // send id to route and get id from page parameters to fetch foods.
      .doc(Get.parameters['id'])
      .collection("foods")
      .get();

  List<FoodModel> list = snapshot.docs
      .map((doc) => FoodModel.fromJson(doc.data()
        ..addAll({
          "doc_id": doc.id,
          "doc_parent_id": doc.reference.parent.parent!.id
        })))
      .toList();

  return list;
}

Future<List<FoodModel>> getFavoriteFoodsService() async {
  final snapshot = await FirebaseFirestore.instance
      .collectionGroup("foods")
      .where("is_favorite", isEqualTo: true)
      .get();

  List<FoodModel> list = snapshot.docs
      .map((doc) => FoodModel.fromJson(doc.data()
        ..addAll({
          "doc_id": doc.id,
          "doc_parent_id": doc.reference.parent.parent!.id
        })))
      .toList();

  return list;
}

Future<List<FoodModel>> getBasketFoodsService() async {
  final snapshot = await FirebaseFirestore.instance
      .collectionGroup("foods")
      .where("basket_quantity", isEqualTo: 1)
      .get();

  List<FoodModel> list = snapshot.docs
      .map((doc) => FoodModel.fromJson(doc.data()
        ..addAll({
          "doc_id": doc.id,
          "doc_parent_id": doc.reference.parent.parent!.id
        })))
      .toList();

  return list;
}
