// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

// ignore: use_key_in_widget_constructors
class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildBack() => Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        );
    return Stack(
      children: [
        _buildBack(),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Welcome"),
                centerTitle: true,
              ),
            ),
            FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
              future: FirebaseFirestore.instance
                  .collection("home")
                  .orderBy("pos")
                  .get(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return SliverToBoxAdapter(
                    child: Container(
                        height: 200.0,
                        alignment: Alignment.center,
                        child: Container()),
                  );
                } else {
                  return SliverStaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1.0,
                    crossAxisSpacing: 1.0,
                    staggeredTiles: snapshot.data!.docs.map((doc) {
                      return StaggeredTile.count(
                          doc.data()['x'], doc.data()['y']);
                    }).toList(),
                    children: snapshot.data!.docs.map((docs) {
                      return FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: docs.data()['image'],
                        fit: BoxFit.cover,
                      );
                    }).toList(),
                  );
                }
              },
            )
          ],
        )
      ],
    );
  }
}
