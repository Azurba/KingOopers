import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NavigationBarOff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationBarOff();
  }
}

BottomNavigationBar bottomNavigationOff() {
  return BottomNavigationBar(
      backgroundColor: Colors.blueAccent,
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 40, color: Colors.black54,
            ),
            label: "",
            backgroundColor: Colors.black54),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              size: 40,
              color: Colors.black54,
            ),
            label: "",
            backgroundColor: Colors.black54)
      ]);
}
