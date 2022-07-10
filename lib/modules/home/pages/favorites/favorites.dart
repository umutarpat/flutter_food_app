import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/utils/logger.dart';

class HomeViewFavorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              FirebaseFirestore.instance
                  .collectionGroup("foods")
                  .where("is_favorite", isEqualTo: true)
                  .get()
                  .then((value) => logger(value.docs.first.data()));
            },
            child: Text("See favs"))
      ],
    );
  }
}
