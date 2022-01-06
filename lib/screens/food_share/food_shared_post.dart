import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/styles/style_button.dart';
import 'package:neighborchefapp/widgets/styles/sttyle_appbar.dart';

class FoodSharedPost extends StatefulWidget {
  const FoodSharedPost({Key? key}) : super(key: key);

  @override
  _FoodSharedPostState createState() => _FoodSharedPostState();
}

class _FoodSharedPostState extends State<FoodSharedPost> {
  var pageName = 'New Post';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          styleAppBar(
            context,
            styleAppBarTitle: pageName,
            styleAppBarIconText: 'Next',
            styleAppBarIcon: null,
            styleAppBarIconTextColor: Colors.red,
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                styleButton(
                  context,
                  styleButtonIcon: Icons.food_bank,
                  styleButtonText: 'Food Shared',
                  styleButtonBorderColor: Color(0xFFFFFFFF),
                  styleButtonIconSize: 27,
                  styleButtonColor: Color(0xFFffffff),
                  styleButtonTextColor: Color(0xff000000),
                  styleButtonTextSize: 14,
                  styleButtonNavigatorState: Navigator.push,
                  styleButtonNavigate: FoodSharedPost(),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: styleButton(
              context,
              styleButtonIcon: Icons.image,
              styleButtonWidth: 78,
              styleButtonHeight: 50,
              styleButtonColor: Color(0xFFFFFFFF),
              styleButtonIconColor: Colors.amber,
              styleButtonTextColor: Color(0xFFFFFFFF),
              styleButtonBorderColor: Color(0xFFFFFFFF),
              styleButtonIconSize: 48,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Color(0xffF6F6F6),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 4),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                labelText: 'Recipe Name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              color: Color(0xffF6F6F6),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('US'),
                      // TextField(
                      //   decoration: InputDecoration(),
                      // ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Color(0xffE2E2E2),
                    ),
                  ),
                  Text('Create Date'),
                  Container(
                    width: 30,
                    height: 30,
                  ),
                  Text('Shelf Date'),
                  Container(
                    width: 30,
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffF6F6F6),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 4),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            )),
                        labelText: 'Recipe Name',
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 100,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
