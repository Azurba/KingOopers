import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_oopers_app/On/CartOn.dart';
import 'package:king_oopers_app/On/HomeOn.dart';
import 'CardsWidgetOn.dart';

class FruitsStateOn extends StatefulWidget {

  @override
  _FruitsOn createState() => _FruitsOn();
}

class _FruitsOn extends State<FruitsStateOn> {
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
        title: const Text("Fruits", style: TextStyle(fontSize: 35),),
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
          CardsWidgeOn('assets/images/apple.jpg', 'Apple'),
          CardsWidgeOn('assets/images/strawberry.png', 'Strawberry'),
          CardsWidgeOn('assets/images/grapes.png', 'Grapes'),
          CardsWidgeOn('assets/images/waterMelon.png', 'Watermelon'),
          CardsWidgeOn('assets/images/banana.jpg', 'Banana'),
          CardsWidgeOn('assets/images/orange.jpg', 'Orange'),

        ],
      ),
    );
  }
}
