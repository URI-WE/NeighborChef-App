import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/sidebar.dart';
import 'package:neighborchefapp/widgets/sidebar/titlemenu.dart';
import 'package:neighborchefapp/widgets/etc/searchbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var pageName = 'MainPage';
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
            //api를 통한 계정 프로필 사진 추가
          ),
          Text(
            '''   What would you 
   like to cook?''',
            style: TextStyle(fontSize: 24),
          ),
          searchbar(),
          Text(
            '''    Recommended''',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
