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
  final List<Food>? foods = Get.arguments;

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
            children: foods!.isNotEmpty
                ? foods!
                    .map((e) => GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
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
                              ],
                            ),
                          ),
                        ))
                    .toList()
                : []));
  }
}
