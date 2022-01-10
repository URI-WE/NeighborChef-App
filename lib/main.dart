import 'package:flutter/material.dart';
import 'package:neighborchefapp/screens/mainpage.dart';

void main() {
  runApp(const NeighborChef());
}

class NeighborChef extends StatelessWidget {
  const NeighborChef({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
