import 'package:flutter/material.dart';

Widget styleAppBar(
  BuildContext context, {
  var styleAppBarTitle = 'Nonamed',
  styleAppBarIcon = Icons.account_circle_outlined,
  var styleAppBarNavigate = '',
  var styleAppBarIconText = 'IconText',
  styleAppBarIconTextColor = Colors.black,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.black),
    title: Text(
      styleAppBarTitle,
      style: TextStyle(
        fontSize: 24,
        color: Colors.black,
      ),
    ),
    actions: [
      TextButton.icon(
        icon: Icon(
          styleAppBarIcon,
          size: 40,
        ),
        label: Text(
          styleAppBarIconText,
          style: TextStyle(fontSize: 13, color: styleAppBarIconTextColor),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => styleAppBarNavigate));
        },
      )
    ],
  );
}
