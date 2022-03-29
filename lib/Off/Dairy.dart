import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './CardsWidgetOff.dart';

class DairyState extends StatefulWidget {
  String text = "";

  @override
  _Dairy createState() => _Dairy();
}

class _Dairy extends State<DairyState> {
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
              icon: const Icon(Icons.arrow_back, color: Colors.black45,),
              onPressed: () {
                Navigator.pop(context);
              });
        }),
        title: const Text("Dairy", style: TextStyle(color: Colors.black45),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.black45),
              onPressed: () {},
            )
          ]
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CardsWidgeOff('assets/images/milk.png', 'Borden - 2% milk'),
          CardsWidgeOff('assets/images/LacotoseFree.PNG', 'Fa!rlife - Lactose Free Milk'),
          CardsWidgeOff('assets/images/chedarCheese.PNG', 'Kroger - Mild Cheddar Cheese - Block'),
          CardsWidgeOff('assets/images/ProvoloneCheese.PNG', 'Sargento - Provolone Cheese - Slices'),
          CardsWidgeOff('assets/images/sourCream.PNG', 'Daisy - Sour Cream'),
          CardsWidgeOff('assets/images/blueYogurt.PNG', 'Chobani - Greek Yogurt - Blueberry'),
          CardsWidgeOff('assets/images/strawYogurt.PNG', 'Chobani - Greek Yogurt - Strawberry'),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,), label: "", backgroundColor: Colors.black54),
              BottomNavigationBarItem(icon: Icon(Icons.location_on), label: "", backgroundColor: Colors.black54)]
        )
    );
  }
}
