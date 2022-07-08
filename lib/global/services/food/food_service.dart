import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/utils/logger.dart';

Future<List<FoodCategoryModel>> getCategoriesService() async {
  final snapshot =
      await FirebaseFirestore.instance.collection('food-category').get();

  List<FoodCategoryModel> list = snapshot.docs
      .map((doc) => FoodCategoryModel.fromJson(doc.data()))
      .toList();

  return list;
}
