import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/categories/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeViewOrderCategoriesGridCard extends StatelessWidget {
  FoodCategoryModel foodCategory;
  HomeViewOrderCategoriesGridCard(this.foodCategory);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// send docId so that foods service can catch it with Get.parameters['id']
        Get.toNamed("/foods", parameters: {'id': foodCategory.docId ?? ''});
      },
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              foodCategory.imageUrl ?? '',
              width: 50,
              height: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              foodCategory.name ?? '',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
