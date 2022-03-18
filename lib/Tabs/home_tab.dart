import 'dart:ui';

import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget _buildBack() => Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.white
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
    );
    return Stack(
      children: [
        _buildBack(),
        const CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Welcome"),
                centerTitle: true,
              ),
            )
          ],
        )
      ],
    );
  }
}
