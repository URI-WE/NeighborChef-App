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
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xffF6F6F6),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffF6F6F6), width: 4.0),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFF6F6F6), width: 4.0),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: 'Search',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
