import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

class DetailRecipe5 extends StatefulWidget {
  const DetailRecipe5({Key? key}) : super(key: key);

  @override
  _DetailRecipe5State createState() => _DetailRecipe5State();
}

class _DetailRecipe5State extends State<DetailRecipe5> {
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
