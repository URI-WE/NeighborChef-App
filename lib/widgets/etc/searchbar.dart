import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neighborchefapp/screens/etc/account_search.dart';

Widget searchbar(BuildContext context) {
  return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xFFFFEBEFF2), width: 3)),
        child: ListTile(
          leading: Icon(
            Icons.search,
            size: 30,
          ),
          title: Text(
            'Search',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AccountSearch()));
          },
        ),
      ));
}
