import 'package:flutter/material.dart';
import 'package:king_oopers_app/Off/NavigationBarOff.dart';

import '../On/CartOn.dart';
import './CardsWidgetOff.dart';

class CerealsStateOff extends StatefulWidget {
  String text = "";

  @override
  _CerealsOff createState() => _CerealsOff();
}

class _CerealsOff extends State<CerealsStateOff> {

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
          title: const Text("Cereals", style: TextStyle(color: Colors.black45),),
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
            CardsWidgetOff('assets/images/frostedFlakes.PNG', 'Frosted Flakes'),
            CardsWidgetOff('assets/images/cheerios.jpg', 'Cheerios'),
            CardsWidgetOff('assets/images/pops.jpg', 'Pops'),
            CardsWidgetOff('assets/images/raisinBran.jpeg', 'Raisin Bran'),
            CardsWidgetOff('assets/images/frootLoops.jpg', 'Froot Loops'),
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
