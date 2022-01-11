import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

class DetailRecipe4 extends StatefulWidget {
  const DetailRecipe4({Key? key}) : super(key: key);

  @override
  _DetailRecipe4State createState() => _DetailRecipe4State();
}

class _DetailRecipe4State extends State<DetailRecipe4> {
  var pageName = 'RecipeName';
  @override
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
