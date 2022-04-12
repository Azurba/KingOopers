import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_oopers_app/On/CerealsOn.dart';
import 'package:king_oopers_app/On/FruitsOn.dart';
import 'package:king_oopers_app/On/LoginScreenOn.dart';
import 'package:king_oopers_app/On/MeatOn.dart';
import 'package:king_oopers_app/main.dart';

import 'DairyOn.dart';

class DepartmentOn extends StatelessWidget {
  const DepartmentOn({Key? key}) : super(key: key);

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

    // ignore: non_constant_identifier_names
    Widget _HomeButtons(String text, navigateTo) => Padding(
      padding: const EdgeInsets.fromLTRB(1, 0, 1, 40),
      child: SizedBox(
        width: 230,
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

    Widget _ExitButton() => Padding(
      padding: const EdgeInsets.fromLTRB(1, 0, 1, 1),
      child: SizedBox(
        width: 230,
        child: ElevatedButton(
            child: const Text(
              "Exit",
              style: TextStyle(fontSize: 39.0, color: Colors.white),
            ),
            onPressed: () {
              //Get.to(Home());
              /*
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => navigateTo));*/
            },
            onLongPress: () {
              Get.to(const Home());
            } ,
            style: ElevatedButton.styleFrom(primary: Colors.red)),
      ),
    );

    return Stack(
      children: [
        _background(),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
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
                    _HomeButtons("Meats", MeatStateOn()),
                    _HomeButtons("Cereals", CerealsStateOn()),
                    _HomeButtons("Fruits", FruitsStateOn()),
                    //_HomeButtons("Contact us", null),
                    _HomeButtons("Account", const LoginScreenOn()),
                    _ExitButton()
                  ],
                ))
          ],
        )
      ],
    );


  }
}
