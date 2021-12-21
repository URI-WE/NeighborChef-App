import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Widget _MyHomePageState(List<String> imageList) {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white24,
      body: Container(
        margin: EdgeInsets.all(12),
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageList[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            }),
      ),
    ),
  );
}
