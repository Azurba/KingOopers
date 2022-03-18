import 'package:flutter/material.dart';
import 'package:king_oopers_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'King Oopers',
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
