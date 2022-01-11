import 'package:flutter/material.dart';
import 'package:neighborchefapp/screens/cooking_class/cooking_class_post.dart';
import 'package:neighborchefapp/screens/food_share/food_shared_post.dart';
import 'package:neighborchefapp/screens/etc/newpost.dart';
//import 'package:neighborchefapp/screens/recipe_share/sharedrecipe.dart';
import 'package:neighborchefapp/screens/village/village.dart';
import 'package:neighborchefapp/screens/profile/myprofile.dart';

Widget sideBar(BuildContext context) {
  var newpost = 'New Post';
  var sharedrecipes = 'Shared Recipes';
  var foodshare = 'Food share';
  var cookingclass = 'Cooking Class';
  var village = 'Village';
  var userName = 'pepper';
  var profilePicture = 'https://picsum.photos/250?image=100';
  return Container(
    width: MediaQuery.of(context).size.width * 1 / 2,
    child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15, 170, 15, 50),
            child: Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFF5F5F5)),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: NetworkImage(profilePicture))),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyProfile()));
                    },
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                        child: Text(userName),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          navigationButton(context,
              buttonname: newpost, icon: Icons.chat, id: NewPost()),
          navigationButton(
            context,
            buttonname: sharedrecipes,
            icon: Icons.book_online,
            //id: SharedRecipe()
          ),
          navigationButton(context,
              buttonname: foodshare,
              icon: Icons.food_bank,
              id: FoodSharedPost()),
          navigationButton(context,
              buttonname: cookingclass,
              icon: Icons.class_,
              id: CookingClassPost()),
          navigationButton(context,
              buttonname: village, icon: Icons.home, id: Village()),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 160, 0, 0),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                size: 24,
                color: Colors.grey,
              ),
              title: Text(
                'Loguut',
                style: TextStyle(fontSize: 11),
              ),
              onTap: () {},
            ),
          )
        ],
      ),
    ),
  );
}

Widget navigationButton(BuildContext context,
    {var buttonname = 'None Button', icon = Icons.error, var id = ''}) {
  return ListTile(
    leading: Icon(
      icon,
      size: 30,
      color: Colors.orange,
    ),
    title: Text(
      buttonname,
      style: TextStyle(color: Colors.black),
    ),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => id));
    },
  );
}
