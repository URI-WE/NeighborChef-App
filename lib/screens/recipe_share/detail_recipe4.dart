import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

class DetailRecipe4 extends StatefulWidget {
  const DetailRecipe4({Key? key}) : super(key: key);

  @override
  _DetailRecipe4State createState() => _DetailRecipe4State();
}

class _DetailRecipe4State extends State<DetailRecipe4> {
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
