import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardsLocationOn extends StatefulWidget {
  String cardTitle = '';
  String distance = '';

  CardsLocationOn(
      this.cardTitle,
      this.distance,
      );

  @override
  State<CardsLocationOn> createState() => _CardsLocationOnState();
}

class _CardsLocationOnState extends State<CardsLocationOn> {
  String cardTitle = '';
  String distance = '';

  @override
  Widget build(BuildContext context) {
    return cardsWidgetOn(widget.cardTitle, widget.distance);
  }

  Widget cardsWidgetOn(String cardTitle, String distance) => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            cardTitle,
            style: const TextStyle(fontSize: 35),
          ),
        ),
        ButtonBar(alignment: MainAxisAlignment.center, children: [
          Column(
            children: [Text(distance, style: const TextStyle(fontSize: 30),
            ),
            Padding(padding: const EdgeInsets.only(top: 20), child: buyButton(),)
            ],
          )
        ])
      ],
    ),
  );

  void showToast() => Fluttertoast.showToast(
    msg: "Directions added to your Google Maps",
    fontSize: 30,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.red,
  );

  Widget buyButton() => SizedBox(
      height: 50,
      width: 260,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
        onPressed: () {
          showToast();
        },
        child: const Text(
          'Directions',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ));
}
