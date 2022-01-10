import 'package:flutter/material.dart';
import 'package:neighborchefapp/screens/profile/myprofile.dart';
import 'package:neighborchefapp/widgets/sidebar/sidebar.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';
import 'package:neighborchefapp/widgets/etc/searchbar.dart';
import 'package:neighborchefapp/widgets/etc/recommended_recipe.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var pageName = 'Main';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideBar(context),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBar(
            context,
            pagename: pageName,
            id: MyProfile(),
            text: '',
            //api를 통한 계정 프로필 사진 추가
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                'What would you \nlike to cook?',
                style: TextStyle(fontSize: 24, fontFamily: 'poiret'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
            child: Column(
              children: [
                searchbar(context),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                'Recommended',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Container(
            height: 330,
            child: RecommededRecipe(),
          )
        ],
      ),
    );
  }
}
