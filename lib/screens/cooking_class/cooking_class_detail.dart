import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

Widget cookingClassDetail(
  BuildContext context, {
  var userName = 'User Name',
  var profilePicture = 'https://picsum.photos/250?image=100',
}) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: ListView(
      children: [
        styleAppBar(context,
            styleAppBarIcon2: null,
            styleAppBarIconText2: '',
            styleAppBarIcon: Icons.bookmark_border,
            styleAppBarIconText: '',
            styleAppBarTitle: 'Food Share'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image:
                        DecorationImage(image: NetworkImage(profilePicture))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      userName,
                      style: TextStyle(fontSize: 28),
                    ),
                    const Text(
                      'Lv.99',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Text(
            'food description',
            style: TextStyle(fontSize: 27, color: Color(0xff4ECB71)),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Text(
            'much',
            style: TextStyle(fontSize: 27, color: Color(0xffFF7E55)),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.people,
                    size: 40,
                  ),
                  Column(
                    children: [
                      Text('Recruitment',
                          style: TextStyle(
                              color: Color(0xff9B9B9B), fontSize: 11)),
                      Text(
                        'Number',
                        style:
                            TextStyle(color: Color(0xffFF7E55), fontSize: 13),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.directions_run,
                    size: 40,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Difficulty',
                        style:
                            TextStyle(color: Color(0xff9B9B9B), fontSize: 11),
                      ),
                      const Text(
                        'pick',
                        style:
                            TextStyle(color: Color(0xffFF7E55), fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.update,
                    size: 40,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Total Time',
                        style:
                            TextStyle(color: Color(0xff9B9B9B), fontSize: 11),
                      ),
                      const Text(
                        'Pick',
                        style:
                            TextStyle(color: Color(0xffFF7E55), fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 1,
            width: MediaQuery.of(context).size.width * 3 / 5,
            color: Color(0xffC4C4C4),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Text(
            'recipe descript',
            softWrap: true,
            style: TextStyle(color: Color(0xff9B9B9B)),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
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
          padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: 200,
            child: Text('now we can  not import location'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
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
                'Apply',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        )
      ],
    ),
  );
}
