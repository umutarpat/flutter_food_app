import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class GlobalNavBar extends StatelessWidget {
  const GlobalNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WaterDropNavBar(
      backgroundColor: Colors.white,
      onItemSelected: (index) {
        /*   setState(() {
            selectedIndex = index;
          });
          pageController.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad); */
      },
      selectedIndex: 0,
      barItems: [
        BarItem(
          filledIcon: Icons.person,
          outlinedIcon: Icons.person_outlined,
        ),
        BarItem(
            filledIcon: Icons.favorite_rounded,
            outlinedIcon: Icons.favorite_border_rounded),
      ],
    );
  }
}
