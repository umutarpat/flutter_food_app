import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getCategories();
  }

  getCategories() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('food-category').get();
    logger(snapshot.docs.map((doc) => doc.data()));
  }
}
