import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

class DetailRecipe2 extends StatefulWidget {
  const DetailRecipe2({Key? key}) : super(key: key);

  @override
  _DetailRecipe2State createState() => _DetailRecipe2State();
}

class _DetailRecipe2State extends State<DetailRecipe2> {
  var pageName = 'Recipe';
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
