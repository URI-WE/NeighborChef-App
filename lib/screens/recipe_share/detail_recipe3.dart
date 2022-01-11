import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

class DetailRecipe3 extends StatefulWidget {
  const DetailRecipe3({Key? key}) : super(key: key);

  @override
  _DetailRecipe3State createState() => _DetailRecipe3State();
}

class _DetailRecipe3State extends State<DetailRecipe3> {
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
