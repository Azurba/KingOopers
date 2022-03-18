import 'package:flutter/material.dart';

import '../Tabs/home_tab.dart';

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
