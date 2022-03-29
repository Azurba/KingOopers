import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardsWidgetOn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardsWidgetOn();
  }
}

Widget cardsWidgetOn(String image, String cardText) => Card(
  color: Colors.white,
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
  ),
  child: Column(
    children: [
      Stack(
        children: [
          Ink.image(
            image: AssetImage(image),
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
        alignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              quantityButton(),
              buyButton(),
            ],
          )
        ],
      )
    ],
  ),
);
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
                //call function to decrement quantity
              },
              child: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 25,
              )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: Colors.white),
            child: const Text(
              '1',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          InkWell(
              onTap: () {},
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 25,
              )),
        ],
      ),
    ));


Widget buyButton() => SizedBox(
    height: 38,
    width: 260,
    child: TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
      onPressed: () {},
      child: const Text(
        'Add to Cart',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ));




