import 'package:flutter/material.dart';
import 'package:neighbor/utils/styles.dart';

Widget LevelBar(int level, int per) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 100),
      Row(
        children: [
          Text(
            'Lv.$level',
            style: TextStyle(
              fontFamily: 'poiret',
              fontSize: 22,
            ),
          ),
          SizedBox(width: 8),
          Text(
            '$per%',
            style: TextStyle(
              fontFamily: 'poiret',
              fontSize: 11,
            ),
          ),
        ],
      ),
      Container(
        width: 150,
        height: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: LinearProgressIndicator(
            value: per / 100,
            valueColor: AlwaysStoppedAnimation<Color>(Styles.greenColor),
            backgroundColor: Styles.greyCardBackground,
          ),
        ),
      ),
    ],
  );
}
