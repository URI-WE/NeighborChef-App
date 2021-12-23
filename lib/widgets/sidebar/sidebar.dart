import 'package:flutter/material.dart';
import 'package:neighborchefapp/screens/cookingclass.dart';
import 'package:neighborchefapp/screens/foodshare.dart';
import 'package:neighborchefapp/screens/newpost.dart';
import 'package:neighborchefapp/screens/sharedrecipe.dart';
import 'package:neighborchefapp/screens/village.dart';

Widget sideBar(BuildContext context) {
  var newpost = 'New Post';
  var sharedrecipes = 'Shared Recipes';
  var foodshare = 'Food share';
  var cookingclass = 'Cooking Class';
  var village = 'Village';

  return Container(
    width: MediaQuery.of(context).size.width * 2 / 3,
    child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            child: Text('empty'),
          ),
          navigationButton(context,
              buttonname: newpost, icon: Icons.chat, id: NewPost()),
          navigationButton(context,
              buttonname: sharedrecipes,
              icon: Icons.book_online,
              id: SharedRecipe()),
          navigationButton(context,
              buttonname: foodshare, icon: Icons.food_bank, id: FoodShare()),
          navigationButton(context,
              buttonname: cookingclass, icon: Icons.class_, id: CookingClass()),
          navigationButton(context,
              buttonname: village, icon: Icons.home, id: Village()),
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
  return SizedBox(
    width: 400,
    height: 60,
    child: TextButton.icon(
      icon: Icon(
        (icon),
        size: 30,
        color: Colors.orange,
      ),
      label: Text(
        buttonname,
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => id));
      },
    ),
  );
}
