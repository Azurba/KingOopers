import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:king_oopers_app/On/NavigationBarOn.dart';

import '../Off/CardsWidgetOff.dart';
import 'CardsWidgetOn.dart';

class DairyStateOn extends StatefulWidget {
  String text = "";

  @override
  _DairyOn createState() => _DairyOn();
}

class _DairyOn extends State<DairyStateOn> {
  Widget _background() => Container(
    //background
    decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight)),
  );

  @override
  Widget build(BuildContext context) {
    const _cartHeight = 100.0;
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                });
          }),
          title: const Text("Dairy"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            )
          ]
      ),
      backgroundColor: Colors.redAccent,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          cardsWidgetOn('assets/images/milk.png', 'Borden - 2% milk'),
          cardsWidgetOn('assets/images/LacotoseFree.PNG', 'Fa!rlife - Lactose Free Milk'),
          cardsWidgetOn('assets/images/chedarCheese.PNG', 'Kroger - Mild Cheddar Cheese - Block'),
          cardsWidgetOn('assets/images/ProvoloneCheese.PNG', 'Sargento - Provolone Cheese - Slices'),
          cardsWidgetOn('assets/images/sourCream.PNG', 'Daisy - Sour Cream'),
          cardsWidgetOn('assets/images/blueYogurt.PNG', 'Chobani - Greek Yogurt - Blueberry'),
          cardsWidgetOn('assets/images/strawYogurt.PNG', 'Chobani - Greek Yogurt - Strawberry'),
        ],
      ),
        bottomNavigationBar: bottomNavigationOn()
    );
  }
}
