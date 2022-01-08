import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neighborchefapp/api/recommendedrecipeapi.dart';

Widget RecommededRecipe() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      RecipeCard(
          recipeName: recipeName[0],
          recipeAuthor: authorName[0],
          description: description[0],
          recipePicture: recipePicture[0],
          recipeBookmarkState: bookmark[0],
          cardColorTheme: const Color(0xFFD18A8A)),
      RecipeCard(
          recipeName: recipeName[1],
          recipeAuthor: authorName[1],
          description: description[1],
          recipePicture: recipePicture[1],
          recipeBookmarkState: bookmark[1],
          cardColorTheme: const Color(0xFF9E6868)),
      RecipeCard(
          recipeName: recipeName[2],
          recipeAuthor: authorName[2],
          description: description[2],
          recipePicture: recipePicture[2],
          recipeBookmarkState: bookmark[2],
          cardColorTheme: const Color(0xFFD94E4E)),
      RecipeCard(
          recipeName: recipeName[3],
          recipeAuthor: authorName[3],
          description: description[3],
          recipePicture: recipePicture[3],
          recipeBookmarkState: bookmark[3],
          cardColorTheme: const Color(0xFF521D1D)),
      RecipeCard(
          recipeName: recipeName[4],
          recipeAuthor: authorName[4],
          description: description[4],
          recipePicture: recipePicture[4],
          recipeBookmarkState: bookmark[4],
          cardColorTheme: const Color(0xFF523636)),
    ],
  );
}

Widget RecipeCard({
  var recipeName = '',
  var recipeAuthor = '',
  var description = '',
  recipePicture = '',
  cardColorTheme = Color,
  recipeBookmarkState = Icons.bookmark_border,
}) {
  return Container(
    width: 200,
    height: 310,
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: cardColorTheme,
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(0, 5), blurRadius: 6)
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 180,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                  image: NetworkImage(recipePicture), fit: BoxFit.fill)),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 156,
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      color: cardColorTheme,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: IconButton(
                      icon: Icon(
                        recipeBookmarkState,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
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
              softWrap: true,
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(recipeAuthor,
                style: TextStyle(fontSize: 7, color: Colors.white))),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              description,
              style: TextStyle(fontSize: 12, color: Colors.white),
              softWrap: true,
            )),
      ],
    ),
  );
}
