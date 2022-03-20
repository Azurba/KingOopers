import 'package:flutter/material.dart';
import 'package:king_oopers_app/Off/home_tab.dart';

import '../Off/home_tab.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        HomeTab()
      ],
    );
  }
}
