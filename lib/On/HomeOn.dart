import 'package:flutter/material.dart';
import 'package:king_oopers_app/On/CartOn.dart';
import 'package:king_oopers_app/On/DepartmentsOn.dart';
import 'package:king_oopers_app/On/FindUsOn.dart';

class HomeOn extends StatefulWidget {
  const HomeOn({Key? key}) : super(key: key);

  @override
  State<HomeOn> createState() => _HomeOnState();
}


class _HomeOnState extends State<HomeOn> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    final List<Widget>screens = [
      const DepartmentOn(),
      const CartOn(),
      const FindUs(),
    ];

    void onTapFunction(index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                color: Colors.black,
                iconSize: 50,
              );
            },
          ),
          title: const Text(
            "King Oopers",
            style: TextStyle(color: Colors.black, fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTapFunction,
            currentIndex: _currentIndex,
            backgroundColor: Colors.blueAccent,
            selectedItemColor: Colors.yellowAccent,
            selectedFontSize: 30,
            unselectedFontSize: 30,
            unselectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    size: 40,
                    color: Colors.white,
                  ),
                  label: "Menu",
                  backgroundColor: Colors.black54),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 40,
                    color: Colors.white,
                  ),
                  label: "Cart",
                  backgroundColor: Colors.black54),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.location_on,
                    size: 40,
                    color: Colors.white,
                  ),
                  label: "Find us",
                  backgroundColor: Colors.black54),
            ]));
  }
}
