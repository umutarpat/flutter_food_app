import 'package:flutter/material.dart';

PreferredSizeWidget globalAppBar(BuildContext context,
    {List<Widget>? actions}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(45.0),
    child: AppBar(
        title: Text(
          "Foody",
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.white),
        ),
        actions: actions),
  );
}
