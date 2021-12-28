import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget recommandedRecipe() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      recipe(),
      recipe(),
      recipe(),
      recipe(),
      recipe(),
    ],
  );
}

Widget recipe({
  var recipeName = 'None',
  var author = 'None',
  var contents =
      'hello world my name is jang hueng yong I will be good developer',
  var bookmark = 'false',
  var recipePicture =
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg', // 디폴트 이미지 입력
}) {
  return Container(
    width: 200,
    height: 307,
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Colors.grey),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          recipePicture,
          height: 176,
          width: 200,
          fit: BoxFit.fill,
        ),
        Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
        Text(
          recipeName,
          style: TextStyle(fontSize: 18),
        ),
        Text(
          author,
          style: TextStyle(fontSize: 7),
        ),
        Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
        Text(
          contents,
          style: TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}
