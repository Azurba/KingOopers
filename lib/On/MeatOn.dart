import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_oopers_app/On/CartOn.dart';
import 'package:king_oopers_app/On/HomeOn.dart';
import 'CardsWidgetOn.dart';

class MeatStateOn extends StatefulWidget {

  @override
  _MeatOn createState() => _MeatOn();
}

class _MeatOn extends State<MeatStateOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return
            Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child:
              IconButton(
                icon: const Icon(Icons.arrow_back, size: 40),
                onPressed: () {
                  Get.to(const HomeOn());
                },
              ),
            );
        }),
        title: const Text("Meats", style: TextStyle(fontSize: 35),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          Padding(padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child:
            IconButton(
              icon: const Icon(Icons.shopping_cart, size: 40),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartOn()));
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.yellowAccent,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CardsWidgeOn('assets/images/chickenDrums.PNG', 'Chicken Drums'),
          CardsWidgeOn('assets/images/groundBeef.PNG', 'GroundBeef'),
          CardsWidgeOn('assets/images/NYSteak.PNG', 'New York Style Steak'),
          CardsWidgeOn('assets/images/peperoni.PNG', 'Pepperoni Slices'),
          CardsWidgeOn('assets/images/salmon.PNG', 'Atlantic Salmon'),
          CardsWidgeOn('assets/images/shrimp.PNG', 'Raw Shrimp'),
          CardsWidgeOn('assets/images/turkey.PNG', 'Roasted Turkey Breast'),

        ],
      ),
    );
  }
}
