import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/styles/style_button.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

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
          styleAppBar(context,
              styleAppBarIcon: null,
              styleAppBarIconText: 'next',
              styleAppBarIconTextColor: Colors.red,
              styleAppBarTitle: pageName,
              styleAppBarNavigate: null,
              styleAppBarIcon2: null),
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
              styleButtonIcon: Icons.image_search_outlined,
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
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xffF6F6F6),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffF6F6F6), width: 4.0),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFF6F6F6), width: 4.0),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: 'Recipe Name',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'US',
                            style: TextStyle(
                                fontSize: 27, color: Color(0xff4ECB71)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color(0xffE2E2E2),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffE2E2E2), width: 4.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFE2E2E2), width: 4.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          hintText: 'Explanation',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffE2E2E2),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffE2E2E2), width: 4.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFE2E2E2), width: 4.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            hintText: 'Category',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffE2E2E2),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5))),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffE2E2E2),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffE2E2E2), width: 4.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFE2E2E2), width: 4.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            hintText: 'Category',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
