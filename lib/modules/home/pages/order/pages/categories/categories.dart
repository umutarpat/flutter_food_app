import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/models/food_category_model/food_category_model.dart';
import 'package:flutter_food_app/global/utils/logger.dart';
import 'package:flutter_food_app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeViewOrderCategories extends StatelessWidget {
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _homeController.mainFuture.value,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.active:
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());
          case ConnectionState.done:
            if (snapshot.hasError) {
              return Container();
            }
            _homeController.assignFutures((snapshot.data! as List));

            return GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: _homeController.foodCategoryData.value
                    .map((e) => GestureDetector(
                          onTap: () {
                            Get.toNamed("/foods", arguments: e);
                          },
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
                    .toList());
          default:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
