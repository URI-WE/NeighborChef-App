import 'package:flutter/material.dart';

Widget appBar(
  BuildContext context, {
  var pagename = 'NONAMED',
  icon = Icons.account_circle,
  id = '',
  var text = 'hello',
}) {
  return AppBar(
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    elevation: 0,
    centerTitle: true,
    title: Text(
      pagename,
      style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontFamily: 'poiret',
          fontWeight: FontWeight.bold),
    ),
    actions: [
      InkWell(
        child: Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon),
                  Text(
                    text,
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  )
                ],
              ),
            )),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => id));
        },
      )
    ],
  );
}
