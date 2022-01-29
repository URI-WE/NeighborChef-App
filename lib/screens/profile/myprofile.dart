import 'package:flutter/material.dart';
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
    var userName = 'User Name';
    var selfItroduce = 'My introduce.';
    var neighbors = '0';
    var totalPosts = '0';
    return Scaffold(
      drawer: sideBar(context),
      backgroundColor: Colors.white,
      body: ListView(
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
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            userName,
                            style: TextStyle(fontSize: 28),
                          ),
                          const Text(
                            'My information',
                            style: TextStyle(fontSize: 8),
                          ),
                          LevelBar(99, 100),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: NetworkImage(profilePicture))),
                    ),
                  ],
                ),
              ),
              Text(
                selfItroduce,
                style: const TextStyle(fontSize: 11),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(),
                    Container(
                        width: 50,
                        height: 50,
                        child: Column(
                          children: [
                            const Text(
                              'Post',
                              style: TextStyle(fontSize: 14),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                totalPosts,
                                style: const TextStyle(
                                    fontSize: 11, color: Colors.red),
                              ),
                            )
                          ],
                        )),
                    Container(
                      width: 70,
                      height: 50,
                      child: Column(
                        children: [
                          const Text(
                            'Neighbors',
                            style: TextStyle(fontSize: 14),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              neighbors,
                              style: const TextStyle(
                                  fontSize: 11, color: Colors.amber),
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
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('My Page', style: TextStyle(fontSize: 14)),
                      TextButton(
                        child: const Text(
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
                height: MediaQuery.of(context).size.height * 1,
                color: const Color(0xffF6F6F6),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
