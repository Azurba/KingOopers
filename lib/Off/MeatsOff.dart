import 'package:flutter/material.dart';
import 'package:king_oopers_app/Off/NavigationBarOff.dart';
import 'package:king_oopers_app/On/CartOn.dart';

import './CardsWidgetOff.dart';

class MeatStateOff extends StatefulWidget {
  String text = "";

  @override
  _MeatOff createState() => _MeatOff();
}

class _MeatOff extends State<MeatStateOff> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black45,),
                onPressed: () {
                  Navigator.pop(context);
                });
          }),
          title: const Text("Meats", style: TextStyle(color: Colors.black45),),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          actions: [
            Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child:
              IconButton(
                icon: const Icon(Icons.shopping_cart, size: 23, color: Colors.black54,),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartOn()));
                },
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            CardsWidgetOff('assets/images/chickenDrums.PNG', 'Chicken Drums'),
            CardsWidgetOff('assets/images/groundBeef.PNG', 'GroundBeef'),
            CardsWidgetOff('assets/images/NYSteak.PNG', 'New York Style Steak'),
            CardsWidgetOff('assets/images/peperoni.PNG', 'Pepperoni Slices'),
            CardsWidgetOff('assets/images/salmon.PNG', 'Atlantic Salmon'),
            CardsWidgetOff('assets/images/shrimp.PNG', 'Raw Shrimp'),
            CardsWidgetOff('assets/images/turkey.PNG', 'Roasted Turkey Breast'),
          ],
        ),
        bottomNavigationBar: bottomNavigationOff()
      /*
        BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,), label: "", backgroundColor: Colors.black54),
              BottomNavigationBarItem(icon: Icon(Icons.location_on), label: "", backgroundColor: Colors.black54)]
        )
        */
    );
  }
}
