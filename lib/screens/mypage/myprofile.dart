import 'package:flutter/material.dart';
import 'package:neighborchefapp/screens/mypage/bookmarkpage.dart';
import 'package:neighborchefapp/widgets/sidebar/sidebar.dart';
import 'package:neighborchefapp/widgets/sidebar/titlemenu.dart';
import 'package:neighborchefapp/screens/mypage/myprofile.dart';
import 'package:neighborchefapp/widgets/etc/piclist.dart';
import 'package:neighborchefapp/api/recommendedrecipeapi.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    var pageName = 'My Profile';
    var profilePicture = 'https://picsum.photos/250?image=100';
    var userName = 'pepper';
    var selfItroduce =
        'Cooking recipes from flutter developers living in Gangwon-do.';
    var neighbors = '231';
    var totalPosts = '8';
    return Scaffold(
      drawer: sideBar(context),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          appBar(context,
              pagename: pageName,
              icon: Icons.bookmark_border,
              id: BookMarkPage()),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            userName,
                            style: TextStyle(fontSize: 28),
                          ),
                          Text(
                            '76 Gajeongbuk-ro, Jang-dong, \nYuseong-gu, Daejeon',
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: NetworkImage(profilePicture))),
                    ),
                  ],
                ),
              ),
              Text(
                selfItroduce,
                style: TextStyle(fontSize: 11),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(),
                    Container(
                        width: 50,
                        height: 50,
                        child: Column(
                          children: [
                            Text(
                              'Post',
                              style: TextStyle(fontSize: 14),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                totalPosts,
                                style:
                                    TextStyle(fontSize: 11, color: Colors.red),
                              ),
                            )
                          ],
                        )),
                    Container(
                      width: 70,
                      height: 50,
                      child: Column(
                        children: [
                          Text(
                            'Neighbors',
                            style: TextStyle(fontSize: 14),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              neighbors,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.amber),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container()
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Row(
                    children: [Text('My Page', style: TextStyle(fontSize: 14))],
                  )),
              Container(
                color: Colors.grey,
              ),
              Expanded(
                child: myHomePageState(recipePicture),
              )
            ],
          ),
        ],
      ),
    );
  }
}
