import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var selectedIndex = 0;

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.house_alt),
          label: "Home",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle_grid_3x3), label: "Category"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_circle), label: "Care"),
      ],
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
      onTap: (index) {
        selectedIndex = index;
        // if (index == 0)
        //   Navigator.pushNamed(context, MyRoutes.homeRoute);
        // else if (index == 1)
        //   Navigator.pushNamed(context, MyRoutes.categoryRoute);
        setState() {}
        ;
      },
    );
  }
}
