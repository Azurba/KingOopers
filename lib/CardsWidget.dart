import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CardsWidget();
  }
}

Widget cardsWidget(String image, String cardText) => Card(
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
            fit: BoxFit.cover,
          ),
          const Positioned(
            bottom: 16,
            right: 16,
            left: 16,
            child: Text(
              'Cats rule the world!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
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
          TextButton(
            child: Text('Buy Cat'),
            onPressed: () {},
          ),
          TextButton(
            child: Text('Buy Cat Food'),
            onPressed: () {},
          )
        ],
      )
    ],
  ),
);