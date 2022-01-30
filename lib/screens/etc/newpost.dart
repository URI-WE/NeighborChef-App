import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';
import 'package:neighborchefapp/widgets/styles/style_button.dart';
import 'package:neighborchefapp/screens/recipe_share/new_post_share_recipe.dart';
import 'package:neighborchefapp/screens/food_share/food_shared_post.dart';
import 'package:neighborchefapp/screens/cooking_class/cooking_class_post.dart';

class NewPost extends StatelessWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pageName = 'New Post';
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          styleAppBar(
            context,
            styleAppBarTitle: pageName,
            styleAppBarIcon: null,
            styleAppBarIconText: '',
            styleAppBarIcon2: null,
            styleAppBarIconText2: '',
          ),
          Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                height: MediaQuery.of(context).size.height * 7 / 10,
                width: MediaQuery.of(context).size.width * 4 / 5,
                decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    styleButton(
                      context,
                      styleButtonIcon: Icons.book_online,
                      styleButtonIconSize: 27,
                      styleButtonText: 'Shared Recipe',
                      styleButtonTextSize: 14,
                      styleButtonColor: Color(0xFFF6F6F6),
                      styleButtonTextColor: Color(0xFF000000),
                      styleButtonBorderColor: Color(0xFFF6F6F6),
                      styleButtonNavigate: NewPostShareRecipe(),
                    ),
                    styleButton(
                      context,
                      styleButtonIcon: Icons.food_bank,
                      styleButtonIconSize: 27,
                      styleButtonText: 'Food Share',
                      styleButtonTextSize: 14,
                      styleButtonColor: Color(0xFFF6F6F6),
                      styleButtonTextColor: Color(0xFF000000),
                      styleButtonBorderColor: Color(0xFFF6F6F6),
                      styleButtonNavigate: FoodSharedPost(),
                    ),
                    styleButton(context,
                        styleButtonIcon: Icons.class_,
                        styleButtonIconSize: 27,
                        styleButtonText: 'Cooking Class',
                        styleButtonTextSize: 14,
                        styleButtonColor: Color(0xFFF6F6F6),
                        styleButtonTextColor: Color(0xFF000000),
                        styleButtonBorderColor: Color(0xFFF6F6F6),
                        styleButtonNavigate: CookingClassPost()),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
