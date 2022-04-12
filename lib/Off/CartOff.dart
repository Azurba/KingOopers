import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:king_oopers_app/Off/CardsCartOff.dart';
import 'package:king_oopers_app/On/CardsCartOn.dart';
import 'package:king_oopers_app/On/HomeOn.dart';

class CartOff extends StatefulWidget {

  @override
  _CartOff createState() => _CartOff();
}

class _CartOff extends State<CartOff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return
            Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child:
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Get.to(const HomeOn());
                },
              ),
            );
        }),
        title: const Text("Cart", style: TextStyle(fontSize: 35),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.yellowAccent,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CardsCartOff('assets/images/blueYogurt.PNG', 'Chobani - Blueberry'),
          CardsCartOff('assets/images/chickenDrums.PNG', 'Tyson - Chicken Thigh'),
          CardsCartOff('assets/images/LacotoseFree.PNG', 'Fa!irlife - Zero Lactose'),
          CardsCartOff('assets/images/frostedFlakes.PNG', 'Frosted Flakes Cereal'),
          checkoutButton()
        ],
      ),
    );
  }

  void showToast(String text) => Fluttertoast.showToast(
    msg: text,
    fontSize: 30,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.red,
  );

  Widget checkoutButton() => Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 40),
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.blueAccent),
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  showToast('Checkout successfully');
                },
                child: const Text(
                  'Proceed to Checkout', style:
                TextStyle(fontSize: 25, color: Colors.white),
                )),
          ],
        ),
      ));
}
