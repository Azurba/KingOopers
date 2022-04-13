import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:king_oopers_app/On/CardsLocationOn.dart';

import 'CardsLocationOff.dart';

class FindUsOff extends StatefulWidget {
  const FindUsOff({Key? key}) : super(key: key);

  @override
  State<FindUsOff> createState() => _FindUsOffState();
}

class _FindUsOffState extends State<FindUsOff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            CardsLocationOff('1015 S Taft Hill Rd, Fort Collins, CO 80521',
                '1.1 miles away'),
            CardsLocationOff('2325 S College Ave, Fort Collins, CO 80525',
                '2.5 miles away'),
          ],
        ),
      ),
    );
  }

  void showToast(String text) => Fluttertoast.showToast(
    msg: text,
    fontSize: 30,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.red,
  );
}
