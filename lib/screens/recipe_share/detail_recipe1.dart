import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

class DetailRecipe1 extends StatefulWidget {
  const DetailRecipe1({Key? key}) : super(key: key);

  @override
  _DetailRecipe1State createState() => _DetailRecipe1State();
}

class _DetailRecipe1State extends State<DetailRecipe1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          appBar(
            context,
            text: '',
            icon: Icons.bookmark_border,
          )
        ],
      ),
    );
  }
}
