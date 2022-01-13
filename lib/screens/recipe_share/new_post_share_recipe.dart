import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';
import 'package:neighborchefapp/widgets/styles/style_button.dart';
import 'package:image_picker/image_picker.dart';

class NewPostShareRecipe extends StatefulWidget {
  const NewPostShareRecipe({Key? key}) : super(key: key);

  @override
  _NewPostShareRecipeState createState() => _NewPostShareRecipeState();
}

class _NewPostShareRecipeState extends State<NewPostShareRecipe> {
  @override
  Widget build(BuildContext context) {
    var pageName = 'New Post';
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
                  styleButtonIcon: Icons.book,
                  styleButtonText: 'Shared Recipe',
                  styleButtonBorderColor: Color(0xFFFFFFFF),
                  styleButtonIconSize: 27,
                  styleButtonColor: Color(0xFFffffff),
                  styleButtonTextColor: Color(0xff000000),
                  styleButtonTextSize: 14,
                  styleButtonNavigatorState: Navigator.push,
                  styleButtonNavigate: NewPostShareRecipe(),
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
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                              width: 110,
                              height: 40,
                              child: Row(
                                children: [
                                  PopupMenuButton(
                                      icon: Icon(
                                        Icons.update,
                                        size: 40,
                                      ),
                                      itemBuilder: (context) => [
                                            PopupMenuItem(
                                              child: Text("30"),
                                              value: 1,
                                            ),
                                            PopupMenuItem(
                                              child: Text("60"),
                                              value: 2,
                                            ),
                                            PopupMenuItem(
                                              child: Text("90"),
                                              value: 3,
                                            ),
                                            PopupMenuItem(
                                              child: Text("120"),
                                              value: 4,
                                            ),
                                            PopupMenuItem(
                                              child: Text("150"),
                                              value: 5,
                                            ),
                                            PopupMenuItem(
                                              child: Text("180"),
                                              value: 6,
                                            )
                                          ]),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Text('total time'),
                                          Text('Pick'),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                              width: 110,
                              height: 40,
                              child: Row(
                                children: [
                                  PopupMenuButton(
                                      icon: Icon(
                                        Icons.update,
                                        size: 40,
                                      ),
                                      itemBuilder: (context) => [
                                            PopupMenuItem(
                                              child: Text("Easy"),
                                              value: 1,
                                            ),
                                            PopupMenuItem(
                                              child: Text("Normal"),
                                              value: 2,
                                            ),
                                            PopupMenuItem(
                                              child: Text("Hard"),
                                              value: 3,
                                            ),
                                          ]),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Text('Difficulty'),
                                          Text('Pick'),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width * 4 / 5,
                    color: Colors.black,
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
                      color: Color(0xffE2E2E2),
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
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                        child: Text(
                          'Step',
                          style: TextStyle(
                              fontSize: 24, color: const Color(0xffFF7E55)),
                        ),
                      )
                    ],
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
                          hintText: 'Descript',
                        ),
                      ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
