import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

class DetailRecipe5 extends StatefulWidget {
  const DetailRecipe5({Key? key}) : super(key: key);

  @override
  _DetailRecipe5State createState() => _DetailRecipe5State();
}

class _DetailRecipe5State extends State<DetailRecipe5> {
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
