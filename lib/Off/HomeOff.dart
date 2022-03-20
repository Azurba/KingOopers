import 'package:flutter/material.dart';
import 'package:king_oopers_app/Off/Dairy.dart';

class HomeOff extends StatelessWidget {
  const HomeOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _background() => Container(
      //background
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
    );

    //ADD navigateTo to arguments
    // ignore: non_constant_identifier_names
    Widget _HomeButtons(String text, color) => Padding(
      padding: const EdgeInsets.fromLTRB(1, 0, 1, 20),
      child: Container(
        width: 215,
        child: ElevatedButton(
            child: Text(
              text,
              style: TextStyle(fontSize: 29.0, color: color),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DairyState()));
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(255, 255, 204, 1))),
      ),
    );

    return Scaffold(
        appBar: AppBar(
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
                        _HomeButtons("Dairy", Colors.red),
                        _HomeButtons("Meats", Colors.red),
                        _HomeButtons("Cereals", Colors.red),
                        _HomeButtons("Fruits", Colors.red),
                      ],
                    ))
              ],
            )
          ],
        ));
  }
}