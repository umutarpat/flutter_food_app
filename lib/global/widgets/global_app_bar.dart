import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSizeWidget globalAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(40.0),
    child: AppBar(
        title: Text(
      "Foody",
      style:
          Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),
    )),
  );
}
