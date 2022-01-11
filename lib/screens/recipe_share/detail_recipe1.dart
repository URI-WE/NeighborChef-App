import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

class DetailRecipe1 extends StatefulWidget {
  const DetailRecipe1({Key? key}) : super(key: key);

  @override
  _DetailRecipe1State createState() => _DetailRecipe1State();
}

class _DetailRecipe1State extends State<DetailRecipe1> {
  @override
  var pageName = 'Recipe';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          styleAppBar(
            context,
            styleAppBarIcon2: Icons.more_horiz,
            styleAppBarIconText2: '',
            styleAppBarIcon: Icons.bookmark_border_outlined,
            styleAppBarIconText: '',
            styleAppBarTitle: pageName,
          )
        ],
      ),
    );
  }
}
