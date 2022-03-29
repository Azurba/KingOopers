import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:king_oopers_app/Off/HomeOff.dart';
import 'package:king_oopers_app/On/HomeOn.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const GetMaterialApp(
    title: "King Oopers",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _background() => Container(
          //background
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.greenAccent, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        );

    //ADD navigateTo to arguments
    // ignore: non_constant_identifier_names
    Widget _HomeButtons(String text, navigateTo) => Padding(
        padding: const EdgeInsets.fromLTRB(1, 0, 1, 20),
        child: Container(
          width: 215,
          child: ElevatedButton(
            child: Text(
              text,
              style: const TextStyle(fontSize: 29.0, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              Get.to(navigateTo);
              /*
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => navigateTo));*/
            },
            style: ElevatedButton.styleFrom(primary: Colors.white),
          ),
        ));

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "CS 464 Project",
            style: TextStyle(color: Colors.black, fontSize: 27),
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
                            image: AssetImage('assets/images/csu-logo.png')),
                      )),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _HomeButtons("Accessibility Off", const HomeOff()),
                        _HomeButtons("Accessibility On", const HomeOn()),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 420, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Student: Joao Pimenta Giudice"),
                        Text(
                            "CS464 - Introduction to Human-Computer Interaction "),
                        Text("Spring 2022")
                      ],
                    )),
              ],
            )
          ],
        ));
  }
}
