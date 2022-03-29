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
  @override
  Widget build(BuildContext context) {
    const _cartHeight = 100.0;
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                iconSize: 50,
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                });
          }),
          title: const Text("Dairy", style: TextStyle(fontSize: 35),),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.yellowAccent,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CardsWidgeOn('assets/images/milk.png', 'Borden - 2% milk'),
          CardsWidgeOn('assets/images/LacotoseFree.PNG', 'Fa!rlife - Lactose Free Milk'),
          CardsWidgeOn('assets/images/chedarCheese.PNG', 'Kroger - Mild Cheddar Cheese - Block'),
          CardsWidgeOn('assets/images/ProvoloneCheese.PNG', 'Sargento - Provolone Cheese - Slices'),
          CardsWidgeOn('assets/images/sourCream.PNG', 'Daisy - Sour Cream'),
          CardsWidgeOn('assets/images/blueYogurt.PNG', 'Chobani - Greek Yogurt - Blueberry'),
          CardsWidgeOn('assets/images/strawYogurt.PNG', 'Chobani - Greek Yogurt - Strawberry'),

        ],
      ),
        bottomNavigationBar: bottomNavigationOn()
    );
  }
}
