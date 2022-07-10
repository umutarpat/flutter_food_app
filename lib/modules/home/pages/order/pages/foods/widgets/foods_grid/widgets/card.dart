import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_model.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/modules/home/controllers/add_controller.dart';
import 'package:flutter_food_app/modules/home/pages/order/pages/foods/controllers/foods_controller.dart';
import 'package:get/get.dart';

class HomeViewOrderCategoriesFoodsGridCard extends StatelessWidget {
  FoodModel food;
  HomeViewOrderCategoriesFoodsGridCard(this.food);
  final HomeViewOrderCategoriesFoodsController _foodsController = Get.find();
  final HomeAddController _addController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {
                  _addController
                      .addToFavorite(
                          docParentId: food.docParentId!,
                          docId: food.docId!,
                          isFavorite: food.isFavorite ?? true ? false : true)
                      .then((res) => _foodsController.updateMainFuture());
                },
                icon: Icon(food.isFavorite ?? false
                    ? Icons.favorite_rounded
                    : Icons.favorite_border_outlined)),
          ),
          Image.network(
            food.imageUrl ?? '',
            width: 50,
            height: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            food.name ?? '',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                _addController
                    .addToBasket(
                        docParentId: food.docParentId!,
                        docId: food.docId!,
                        basketQuantity: food.basketQuantity != 0 ? 0 : 1)
                    .then((res) => _foodsController.updateMainFuture());
              },
              child: Text(
                food.basketQuantity != 0
                    ? "Remove From Basket"
                    : "Add To Basket",
                style: Theme.of(context).textTheme.button,
              ))
        ],
      ),
    );
  }
}
