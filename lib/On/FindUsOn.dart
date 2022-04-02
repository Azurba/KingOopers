import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:king_oopers_app/On/CardsLocationOn.dart';

import 'HomeOn.dart';

class FindUs extends StatefulWidget {
  const FindUs({Key? key}) : super(key: key);

  @override
  State<FindUs> createState() => _FindUsState();
}

class _FindUsState extends State<FindUs> {
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
                  Get.to(const HomeOn());
                },
              ),
            );
        }),
        title: const Text("Find Us", style: TextStyle(fontSize: 35),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.yellowAccent,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
        CardsLocationOn('1015 S Taft Hill Rd, Fort Collins, CO 80521',
            '1.1 miles away'),
          CardsLocationOn('2325 S College Ave, Fort Collins, CO 80525',
              '2.5 miles away'),

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
                TextStyle(fontSize: 35, color: Colors.white),
                )),
          ],
        ),
      ));
  }
