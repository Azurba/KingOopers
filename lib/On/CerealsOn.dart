import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_oopers_app/On/CartOn.dart';
import 'package:king_oopers_app/On/HomeOn.dart';
import 'CardsWidgetOn.dart';

class CerealsStateOn extends StatefulWidget {

  @override
  _CerealsOn createState() => _CerealsOn();
}

class _CerealsOn extends State<CerealsStateOn> {
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
        title: const Text("Cereals", style: TextStyle(fontSize: 35),),
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
          CardsWidgeOn('assets/images/frostedFlakes.PNG', 'Frosted Flakes'),
          CardsWidgeOn('assets/images/cheerios.jpg', 'Cheerios'),
          CardsWidgeOn('assets/images/pops.jpg', 'Pops'),
          CardsWidgeOn('assets/images/raisinBran.jpeg', 'Raisin Bran'),
          CardsWidgeOn('assets/images/frootLoops.jpg', 'Froot Loops'),

        ],
      ),
    );
  }
}
