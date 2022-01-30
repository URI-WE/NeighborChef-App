import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

Widget foodShareDetail(
  BuildContext context, {
  int likeCount = 0,
  int views = 0,
  var recipeAuthor = "recipeAuthor",
  var recipeName = "recipe Name",
  recipePicture = "",
}) {
  var pageName = "Recipe";
  return Scaffold(
    backgroundColor: Colors.white,
    body: ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        styleAppBar(
          context,
          styleAppBarIcon2: null,
          styleAppBarIconText2: '',
          styleAppBarIcon: Icons.bookmark_border_outlined,
          styleAppBarIconText: '',
          styleAppBarTitle: pageName,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 4 / 5,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(recipePicture), fit: BoxFit.fitWidth)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                  Column(
                    children: <Widget>[
                      Text(
                        recipeName,
                        style:
                            TextStyle(color: Color(0xff515151), fontSize: 20),
                      ),
                      Text(
                        recipeAuthor,
                        style:
                            TextStyle(color: Color(0xff9B9B9B), fontSize: 10),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
          child: Text(
            'US : ',
            style: TextStyle(fontSize: 27, color: Color(0xff4ECB71)),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
          child: Text(
            'recipe descript',
            softWrap: true,
            style: TextStyle(color: Color(0xff9B9B9B)),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Date : '),
                ],
              ),
              Row(
                children: [
                  Text('Recruitment Deadline : '),
                ],
              ),
              Row(
                children: [Text('Location : ')],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(40, 5, 40, 0),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: 200,
            child: Text('now we can  not import location'),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: Text(
            'Category',
            style: TextStyle(color: Color(0xff4ECB71), fontSize: 24),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 100,
          color: Color(0xffF6F6F6),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 50,
          color: Color(0xff4ECB71),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Buy',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        )
      ],
    ),
  );
}
