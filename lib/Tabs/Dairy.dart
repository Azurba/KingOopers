import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              });
        }),
        title: Text("Dairy"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.35,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 1.35,
            child: Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height / 1.35,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      "Cart",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
