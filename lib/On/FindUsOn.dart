import 'package:flutter/material.dart';

class FindUs extends StatefulWidget {
  const FindUs({Key? key}) : super(key: key);

  @override
  State<FindUs> createState() => _FindUsState();
}

class _FindUsState extends State<FindUs> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Find Us", style: TextStyle(fontSize: 60),),),
    );
  }
}
