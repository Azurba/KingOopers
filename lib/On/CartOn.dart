import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:king_oopers_app/On/DairyOn.dart';

class CartOn extends StatefulWidget {
  const CartOn({Key? key}) : super(key: key);

  @override
  State<CartOn> createState() => _CartOnState();
}

class _CartOnState extends State<CartOn> {
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
                    Navigator.pop(context);
                  },
                ),
              );
          }),
          title: const Text("Cart", style: TextStyle(fontSize: 35),),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: const Center(child: Text("CART", style: TextStyle(fontSize: 60),)
    ,
        )
    );
  }
}
