import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:king_oopers_app/Off/Dairy.dart';
import 'package:king_oopers_app/On/DairyOn.dart';

class HomeOn extends StatelessWidget {
  const HomeOn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _background() => Container(
          //background
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.yellowAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        );

    //ADD navigateTo to arguments
    // ignore: non_constant_identifier_names
    Widget _HomeButtons(String text, navigateTo) => Padding(
          padding: const EdgeInsets.fromLTRB(1, 0, 1, 50),
          child: SizedBox(
            width: 215,
            child: ElevatedButton(
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 39.0, color: Colors.white),
                ),
                onPressed: () {
                  Get.to(navigateTo);
                  /*
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => navigateTo));*/
                },
                style: ElevatedButton.styleFrom(primary: Colors.blue)),
          ),
        );

    return Scaffold(
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
        body: Stack(
          children: [
            _background(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/kingOopers.PNG')),
                      )),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _HomeButtons("Dairy", DairyStateOn()),
                        _HomeButtons("Meats", null),
                        _HomeButtons("Cereals", null),
                        _HomeButtons("Fruits", null),
                      ],
                    ))
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 30,
            unselectedFontSize: 30,
            items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 40,
              ),
              label: "Cart",
              backgroundColor: Colors.black54),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on, size: 40),
              label: "Find Shop",
              backgroundColor: Colors.black54)
        ]));
  }
}
