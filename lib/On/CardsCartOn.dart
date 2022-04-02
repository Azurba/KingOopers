import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardsCartOn extends StatefulWidget {
  String cardText = '';
  String imageSource = '';

  CardsCartOn(
    this.imageSource,
    this.cardText,
  );

  @override
  State<CardsCartOn> createState() => _CardsCartOnState();
}

class _CardsCartOnState extends State<CardsCartOn> {
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
        child: Row(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: AssetImage(imageSource),
                  height: 150.0,
                  width: 100,
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,0, 50),
                  child: Text(
                    cardText,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                ButtonBar(alignment: MainAxisAlignment.center, children: [
                  Column(
                    children: [deleteButton()],
                  )
                ])
              ],
            )
          ],
        ),
      );

  void showToast(String text) => Fluttertoast.showToast(
        msg: text,
        fontSize: 30,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.red,
      );

  Widget deleteButton() => Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 40),
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.blueAccent),
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  showToast('Product Removed from Cart Successfully');
                },
                child: const Text(
                  'Remove', style:
                  TextStyle(fontSize: 35, color: Colors.white),
                )),
          ],
        ),
      ));
}
