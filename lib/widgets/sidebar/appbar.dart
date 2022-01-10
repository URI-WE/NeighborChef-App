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
            width: 50,
            height: 40,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 33,
                    color: Colors.grey,
                  ),
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
