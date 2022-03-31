import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_oopers_app/On/CartOn.dart';
import 'package:king_oopers_app/On/DepartmentsOn.dart';
import 'package:king_oopers_app/On/HomeOn.dart';
import 'package:king_oopers_app/On/NavigationBarOn.dart';
import '../Off/CardsWidgetOff.dart';
import 'CardsWidgetOn.dart';

class DairyStateOn extends StatefulWidget {

  @override
  _DairyOn createState() => _DairyOn();
}

class _DairyOn extends State<DairyStateOn> {
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
          title: const Text("Dairy", style: TextStyle(fontSize: 35),),
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
          CardsWidgeOn('assets/images/milk.png', 'Borden - 2% milk'),
          CardsWidgeOn('assets/images/LacotoseFree.PNG', 'Fa!rlife - Lactose Free Milk'),
          CardsWidgeOn('assets/images/chedarCheese.PNG', 'Kroger - Mild Cheddar Cheese - Block'),
          CardsWidgeOn('assets/images/ProvoloneCheese.PNG', 'Sargento - Provolone Cheese - Slices'),
          CardsWidgeOn('assets/images/sourCream.PNG', 'Daisy - Sour Cream'),
          CardsWidgeOn('assets/images/blueYogurt.PNG', 'Chobani - Greek Yogurt - Blueberry'),
          CardsWidgeOn('assets/images/strawYogurt.PNG', 'Chobani - Greek Yogurt - Strawberry'),

        ],
      ),
    );
  }
}
