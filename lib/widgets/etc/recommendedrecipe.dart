import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neighborchefapp/api/recommendedrecipeapi.dart';

Widget recommandedRecipe() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      recipe(
          recipeName: recipeName[0],
          authorName: authorName[0],
          description: description[0],
          recipePicture: recipePicture[0],
          bookmark: bookmark[0],
          cooler: const Color(0xFFD18A8A)),
      recipe(
          recipeName: recipeName[1],
          authorName: authorName[1],
          description: description[1],
          recipePicture: recipePicture[1],
          bookmark: bookmark[1],
          cooler: const Color(0xFF9E6868)),
      recipe(
          recipeName: recipeName[2],
          authorName: authorName[2],
          description: description[2],
          recipePicture: recipePicture[2],
          bookmark: bookmark[2],
          cooler: const Color(0xFFD94E4E)),
      recipe(
          recipeName: recipeName[3],
          authorName: authorName[3],
          description: description[3],
          recipePicture: recipePicture[3],
          bookmark: bookmark[3],
          cooler: const Color(0xFF521D1D)),
      recipe(
          recipeName: recipeName[4],
          authorName: authorName[4],
          description: description[4],
          recipePicture: recipePicture[4],
          bookmark: bookmark[4],
          cooler: const Color(0xFF523636))
    ],
  );
}

Widget recipe(
    {var recipeName = 'Error',
    var authorName = 'Error',
    var description = 'network Error check your network plz',
    var bookmark = 'false',
    var recipePicture = 'https://picsum.photos/250?image=9',
    cooler = Color}) {
  return Container(
    width: 200,
    height: 307,
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      color: cooler,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 176,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(
                  recipePicture,
                ),
                fit: BoxFit.fill,
              )),
          child: Stack(
            children: [
              Positioned(
                left: 156,
                child: Container(
                  child: Icon(Icons.bookmark),
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      color: cooler,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Text(
            recipeName,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            authorName,
            style: TextStyle(fontSize: 7, color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Text(
            description,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
