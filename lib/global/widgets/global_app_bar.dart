import 'package:flutter/material.dart';

PreferredSizeWidget globalAppBar(BuildContext context,
    {List<Widget>? actions, String title = "Foody"}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(45.0),
    child: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.white),
        ),
        actions: actions),
  );
}
