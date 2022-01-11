import 'package:flutter/material.dart';
//import 'package:neighborchefapp/screens/profile/bookmarkpage.dart';
import 'package:neighborchefapp/widgets/sidebar/sidebar.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';
import 'package:neighborchefapp/screens/profile/myprofile.dart';
import 'package:neighborchefapp/widgets/etc/piclist.dart';
import 'package:neighborchefapp/api/recommendedrecipeapi.dart';
import 'package:neighborchefapp/screens/profile/post_list.dart';
import 'package:neighborchefapp/widgets/styles/style_button.dart';
import 'package:neighborchefapp/widgets/etc/level_bar_widget.dart';

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
          styleAppBar(
            context,
            styleAppBarIcon: Icons.bookmark_border,
            styleAppBarIconText: 'List',
            styleAppBarTitle: pageName,
            styleAppBarIcon2: null,
            styleAppBarIconText2: '',
          ),
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
                          ),
                          LevelBar(38, 69),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Page', style: TextStyle(fontSize: 14)),
                      TextButton(
                        child: Text(
                          'All',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFFFF7E55)),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyPostList()));
                        },
                      )
                    ],
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 1 / 3,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
