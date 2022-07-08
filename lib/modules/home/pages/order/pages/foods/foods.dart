import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/models/food_category_model/food.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/global/widgets/global_app_bar.dart';
import 'package:flutter_food_app/modules/home/controllers/home_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeViewOrderCategoriesFoods extends StatelessWidget {
  final FoodCategoryModel? foodCategory = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: globalAppBar(
          context,
          actions: [
            GestureDetector(
                onTap: () {
                  logger("pressed");
                },
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: FaIcon(FontAwesomeIcons.basketShopping)))
          ],
        ),
        body: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            children: foodCategory!.foods!.isNotEmpty
                ? foodCategory!.foods!
                    .map((e) => Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                    onPressed: () async {
                                      foodCategory!
                                          .foods![foodCategory!.foods!
                                              .indexWhere((element) =>
                                                  element.imageUrl ==
                                                  e.imageUrl)]
                                          .isFavorite = true;

                                      FirebaseFirestore.instance
                                          .collection('food-category')
                                          .doc(foodCategory!.docId)
                                          .update({
                                        "foods": foodCategory!.foods!
                                            .map((e) => e.toJson()
                                              ..removeWhere((key, value) =>
                                                  value == null))
                                            .toList()
                                      }).then((value) => logger("success"));
                                    },
                                    icon: Icon(Icons.favorite_rounded)),
                              ),
                              Image.network(
                                e.imageUrl ?? '',
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                e.name ?? '',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Add To Cart",
                                    style: Theme.of(context).textTheme.button,
                                  ))
                            ],
                          ),
                        ))
                    .toList()
                : []));
  }
}








/*  onPressed: () async {
                                      var john = await FirebaseFirestore
                                          .instance
                                          .collection('food-category')
                                          .where(
                                        "foods",
                                        arrayContains: {
                                          "image_url": e.imageUrl!
                                        },
                                      ).get();

                                      FoodCategoryModel list =
                                          FoodCategoryModel.fromJson(
                                              john.docs.first.data());

                                      list
                                          .foods![list.foods!.indexWhere(
                                              (element) =>
                                                  element.imageUrl ==
                                                  e.imageUrl)]
                                          .isFavorite = true;

                                      FirebaseFirestore.instance
                                          .collection('food-category')
                                          .doc(john.docs.first.id)
                                          .set({
                                        "foods": list.foods!
                                            .map((e) => e.toJson()
                                              ..removeWhere((key, value) =>
                                                  value == null))
                                            .toList()
                                      }).then((value) => logger("success"));
                                    }, */