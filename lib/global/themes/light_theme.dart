import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/global/utils/const_design.dart';
import 'package:google_fonts/google_fonts.dart';

/// We may need [context] later so i am calling it here.
ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    cupertinoOverrideTheme: const CupertinoThemeData(
      textTheme: CupertinoTextThemeData(),
    ),
    scaffoldBackgroundColor: kBgColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(primary: Colors.green)),
    textTheme: GoogleFonts.nunitoTextTheme(ThemeData.light().textTheme)
        .apply(
          bodyColor: Colors.grey,
          displayColor: Colors.grey,
        )
        .copyWith(
          subtitle1: GoogleFonts.nunito(
            textStyle: ThemeData.light().textTheme.subtitle1,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            height: 1.1,
          ),
          button: GoogleFonts.nunito(
            textStyle: ThemeData.light().textTheme.button,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 16,
            height: 1.1,
          ),
        ),
  );
}
