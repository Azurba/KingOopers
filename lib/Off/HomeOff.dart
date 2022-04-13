import 'package:flutter/material.dart';
import 'package:king_oopers_app/Off/DepartmentsOff.dart';
import 'package:king_oopers_app/Off/FindUsOff.dart';
import 'package:king_oopers_app/On/CartOn.dart';
import 'package:king_oopers_app/On/DepartmentsOn.dart';
import 'package:king_oopers_app/On/FindUsOn.dart';

class HomeOff extends StatefulWidget {
  const HomeOff({Key? key}) : super(key: key);

  @override
  State<HomeOff> createState() => _HomeOffState();
}


class _HomeOffState extends State<HomeOff> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    final List<Widget>screens = [
      const DepartmentOff(),
      const FindUsOff(),
    ];

    void onTapFunction(index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
      /*
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

       */
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTapFunction,
            currentIndex: _currentIndex,
            backgroundColor: Colors.redAccent,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.orange,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  label: "",
                  backgroundColor: Colors.black54),
              /*
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  label: "",
                  backgroundColor: Colors.black54),

               */
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  label: "",
                  backgroundColor: Colors.black54),
            ]));
  }
}
