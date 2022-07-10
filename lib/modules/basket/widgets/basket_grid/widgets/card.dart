import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_model.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/modules/basket/controllers/add_controller.dart';
import 'package:flutter_food_app/modules/basket/controllers/basket_controller.dart';
import 'package:get/get.dart';

class BasketViewGridCard extends StatelessWidget {
  FoodModel favorites;
  BasketViewGridCard(this.favorites);
  final BasketViewBasketController _basketController = Get.find();
  final BasketViewAddController _addController = Get.find();

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
                onPressed: () async {
                  _addController
                      .addToFavorite(
                          docParentId: favorites.docParentId!,
                          docId: favorites.docId!,
                          isFavorite:
                              favorites.isFavorite ?? true ? false : true)
                      .then((res) => _basketController.updateMainFuture());
                },
                icon: Icon(favorites.isFavorite ?? false
                    ? Icons.favorite_rounded
                    : Icons.favorite_border_outlined)),
          ),
          Image.network(
            favorites.imageUrl ?? '',
            width: 50,
            height: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            favorites.name ?? '',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                _addController
                    .addToBasket(
                        docParentId: favorites.docParentId!,
                        docId: favorites.docId!,
                        basketQuantity: favorites.basketQuantity != 0 ? 0 : 1)
                    .then((res) => _basketController.updateMainFuture());
              },
              child: Text(
                favorites.basketQuantity != 0
                    ? "Remove From Basket"
                    : "Add To Basket",
                style: Theme.of(context).textTheme.button,
              ))
        ],
      ),
    );
  }
}
