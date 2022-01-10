import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

class DetailRecipe2 extends StatefulWidget {
  const DetailRecipe2({Key? key}) : super(key: key);

  @override
  _DetailRecipe2State createState() => _DetailRecipe2State();
}

class _DetailRecipe2State extends State<DetailRecipe2> {
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
