import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:king_oopers_app/On/CardsLocationOn.dart';

class FindUs extends StatefulWidget {
  const FindUs({Key? key}) : super(key: key);

  @override
  State<FindUs> createState() => _FindUsState();
}

class _FindUsState extends State<FindUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body:
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            CardsLocationOn('1015 S Taft Hill Rd, Fort Collins, CO 80521',
                '1.1 miles away'),
            CardsLocationOn('2325 S College Ave, Fort Collins, CO 80525',
                '2.5 miles away'),
          ],
        ),
      ),
    );
  }

  void showToast(String text) =>
      Fluttertoast.showToast(
        msg: text,
        fontSize: 30,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.red,
      );
}
