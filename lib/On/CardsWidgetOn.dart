import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardsWidgeOn extends StatefulWidget {
  String cardText = '';
  String imageSource = '';

  CardsWidgeOn(
    this.imageSource,
    this.cardText,
  );

  @override
  State<CardsWidgeOn> createState() => _CardsWidgeOnState();
}

class _CardsWidgeOnState extends State<CardsWidgeOn> {
  int _quantity = 0;
  String imageSource = '';
  String cardText = '';

  @override
  Widget build(BuildContext context) {
    return cardsWidgetOn(widget.imageSource, widget.cardText);
  }

  Widget cardsWidgetOn(String imageSource, String cardText) => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: AssetImage(imageSource),
                  height: 240,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                cardText,
                style: const TextStyle(fontSize: 35),
              ),
            ),
            ButtonBar(alignment: MainAxisAlignment.center, children: [
              Column(
                children: [quantityButton(), buyButton()],
              )
            ])
          ],
        ),
      );

  void showToast() => Fluttertoast.showToast(
      msg: "Product added to your Cart!",
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
          'Add to Cart',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ));

  Widget quantityButton() => Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 40),
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.blueAccent),
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    _quantity -= 1;
                    if (_quantity <= 0) {
                      _quantity = 0;
                    }
                  });
                },
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 35,
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3), color: Colors.white),
              child: Text(
                "$_quantity",
                style: const TextStyle(color: Colors.black, fontSize: 35),
              ),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    _quantity += 1;
                    if (_quantity <= 0) {
                      _quantity = 0;
                    }
                  });
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 35,
                )),
          ],
        ),
      ));
}
