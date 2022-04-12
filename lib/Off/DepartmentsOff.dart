import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_oopers_app/Off/CerealsOff.dart';
import 'package:king_oopers_app/Off/Dairy.dart';
import 'package:king_oopers_app/Off/FruitsOff.dart';
import 'package:king_oopers_app/Off/MeatsOff.dart';

import '../main.dart';

class DepartmentOff extends StatelessWidget {
  const DepartmentOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _background() => Container(
      //background
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
    );

    // ignore: non_constant_identifier_names
    Widget _HomeButtons(String text, navigateTo) => SizedBox(
        width: 110,
        child: ElevatedButton(
            child: Text(
              text,
              style: const TextStyle(color: Colors.black54),
            ),
            onPressed: () {
              Get.to(navigateTo);
              /*
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => navigateTo));*/
            },
            style: ElevatedButton.styleFrom(primary: Colors.orange)),
      );

    Widget _ExitButton() => Padding(
      padding: const EdgeInsets.fromLTRB(1, 0, 1, 1),
      child: SizedBox(
        width: 110,
        child: ElevatedButton(
            child: const Text(
              "Exit",
              style: TextStyle(fontSize: 19.0, color: Colors.black54),
            ),
            onPressed: () {
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
                    _HomeButtons("Dairy", DairyState()),
                    _HomeButtons("Meats", MeatStateOff()),
                    _HomeButtons("Cereals", CerealsStateOff()),
                    _HomeButtons("Fruits", FruitsStateOff()),
                    _HomeButtons("Account", null),
                    _ExitButton()

                  ],
                ))
          ],
        )
      ],
    );


  }
}
