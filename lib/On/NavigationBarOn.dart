import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NavigationBarOn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationBarOn();
  }
}

BottomNavigationBar bottomNavigationOn() {
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
