import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardsWidgetOff extends StatefulWidget {
  String cardText = '';
  String imageSource = '';
  CardsWidgetOff(this.imageSource, this.cardText);

  @override
  State<CardsWidgetOff> createState() => _CardsWidgetOnState();
}

class _CardsWidgetOnState extends State<CardsWidgetOff> {
  int _quantity = 1;
  String imageSource = '';
  String cardText = '';

  @override
  Widget build(BuildContext context) {
    return cardsWidgetOff(widget.imageSource, widget.cardText);
  }

  Widget cardsWidgetOff(String imageSource, String cardText) => Card(
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
            style: const TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            buyButton(), quantityButton()],
        )
      ],
    ),
  );

  void showToast() => Fluttertoast.showToast(
    msg: "Product added to your Cart!",
    fontSize: 30,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.blueAccent,
    textColor: Colors.black54
  );

  Widget buyButton() => SizedBox(
      height: 38,
      width: 260,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
        onPressed: () {},
        onLongPress: () {
          showToast();
        },
        child: const Text(
          'Add to Cart',
          style: TextStyle(color: Colors.black45, fontSize: 20),
        ),
      ));

  Widget quantityButton() => Container(
    padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.blueAccent),
    child: Row(
      children: [
        InkWell(
            onTap: () {
              setState(() {
                _quantity -= 1;
                if(_quantity <= 0){
                  _quantity = 0;
                }
              });
            },
            child: const Icon(
              Icons.remove,
              color: Colors.black45,
              size: 25,
            )),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3), color: Colors.white),
          child: Text(
            '$_quantity',
            style: const TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        InkWell(
            onTap: () {
              setState(() {
                _quantity += 1;
                if(_quantity <= 0){
                  _quantity = 0;
                }
              });
            },
            child: const Icon(
              Icons.add,
              color: Colors.black45,
              size: 25,
            )),
      ],
    ),
  );
}
