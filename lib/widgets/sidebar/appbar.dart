import 'package:flutter/material.dart';

Widget styleAppBar(
  BuildContext context, {
  var styleAppBarTitle = 'Nonamed',
  styleAppBarIcon = Icons.account_circle_outlined,
  var styleAppBarNavigate = '',
  var styleAppBarIconText = 'IconText',
  styleAppBarIconTextColor = Colors.black,
  styleAppBarIcon2 = Icons.account_circle_outlined,
  styleAppBarIconText2 = '',
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
      Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: TextButton.icon(
          icon: Icon(
            styleAppBarIcon2,
            size: 40,
            color: Colors.grey,
          ),
          label: Text(
            styleAppBarIconText2,
            style: TextStyle(fontSize: 13, color: styleAppBarIconTextColor),
          ),
          onPressed: () {},
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: TextButton.icon(
          icon: Icon(
            styleAppBarIcon,
            size: 40,
            color: Colors.grey,
          ),
          label: Text(
            styleAppBarIconText,
            style: TextStyle(fontSize: 13, color: styleAppBarIconTextColor),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => styleAppBarNavigate));
          },
        ),
      )
    ],
  );
}
