import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget searchbar() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ),
        hintText: 'Search',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Color(0xFFEBEFF2), width: 3)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xFFEBEFF2), width: 3)),
      ),
    ),
  );
}
