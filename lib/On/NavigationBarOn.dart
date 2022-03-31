import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:king_oopers_app/On/HomeOn.dart';

import 'DairyOn.dart';

class NavigationBarOn extends StatefulWidget {
  const NavigationBarOn({Key? key}) : super(key: key);

  @override
  State<NavigationBarOn> createState() => _NavigationOnState();
}

class _NavigationOnState extends State<NavigationBarOn> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        selectedFontSize: 30,
        fixedColor: Colors.white,
        unselectedFontSize: 30,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 40, color: Colors.white,
              ),
              label: "Cart",
              backgroundColor: Colors.black54),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on,
                size: 40,
                color: Colors.white,
              ),
              label: "Find Shop",
              backgroundColor: Colors.black54)
        ]);
  }
}
