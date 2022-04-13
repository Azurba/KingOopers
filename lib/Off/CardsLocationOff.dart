import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardsLocationOff extends StatefulWidget {
  String cardTitle = '';
  String distance = '';

  CardsLocationOff(
      this.cardTitle,
      this.distance,
      );

  @override
  State<CardsLocationOff> createState() => _CardsLocationOffState();
}

class _CardsLocationOffState extends State<CardsLocationOff> {
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
            style: const TextStyle(fontSize: 20),
          ),
        ),
        ButtonBar(alignment: MainAxisAlignment.center, children: [
          Column(
            children: [Text(distance, style: const TextStyle(fontSize: 16),
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
    fontSize: 2,
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
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ));
}
