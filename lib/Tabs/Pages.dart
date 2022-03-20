import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  const Pages({Key? key}) : super(key: key);

  Widget _background() =>
      Container(
        //background
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      );

  @override
  Widget build(BuildContext context) {
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

        )
    );
  }
}
