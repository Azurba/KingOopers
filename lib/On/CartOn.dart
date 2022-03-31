import 'package:flutter/material.dart';

class CartOn extends StatefulWidget {
  const CartOn({Key? key}) : super(key: key);

  @override
  State<CartOn> createState() => _CartOnState();
}

class _CartOnState extends State<CartOn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("CART", style: TextStyle(fontSize: 60),),),
    );
  }
}
