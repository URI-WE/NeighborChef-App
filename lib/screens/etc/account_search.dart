import 'package:flutter/material.dart';

class AccountSearch extends StatefulWidget {
  const AccountSearch({Key? key}) : super(key: key);

  @override
  _AccountSearchState createState() => _AccountSearchState();
}

class _AccountSearchState extends State<AccountSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text('Search'),
        ],
      ),
    );
  }
}
