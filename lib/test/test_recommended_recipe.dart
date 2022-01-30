import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neighborchefapp/api/recommendedrecipeapi.dart';
import 'package:neighborchefapp/screens/recipe_share/detail_recipe1.dart';

class TestRecommendedRecipe extends StatefulWidget {
  const TestRecommendedRecipe({Key? key}) : super(key: key);

  @override
  _TestRecommendedRecipeState createState() => _TestRecommendedRecipeState();
}

class _TestRecommendedRecipeState extends State<TestRecommendedRecipe> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        recipeCard(context,
            recipeName: recipeName[0],
            recipeAuthor: authorName[0],
            description: description[0],
            recipePicture: recipePicture[0],
            recipeBookmarkState: bookmark[0],
            recipeImageDetail: detailRecipe(context,
                recipeAuthor: authorName[0],
                recipeName: recipeName[0],
                recipePicture: recipePicture[0],
                views: 1,
                likeCount: 0),
            cardColorTheme: const Color(0xFFD18A8A)),
      ],
    );
  }

  Widget recipeCard(
    BuildContext context, {
    var recipeName = '',
    var recipeAuthor = '',
    var description = '',
    recipePicture = 'nonetwork.png',
    cardColorTheme = Color,
    recipeBookmarkState = Icons.bookmark_border,
    recipeImageDetail = '',
  }) {
    return Container(
      width: 200,
      height: 310,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: cardColorTheme,
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(0, 5), blurRadius: 6)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            child: Container(
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: new DecorationImage(
                      image: ExactAssetImage('assets/images/pancakeMain.jpg'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 156,
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          color: cardColorTheme,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: IconButton(
                          icon: Icon(
                            recipeBookmarkState,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            //버튼 클릭 이벤트 발생시 서버로 데어터를 보내어 지금과 다른 상태의 북마크를 추가한다.
                            //서버에서 1번째 포스트의 북마크다 true 였을때 앱에서 버튼을 누르면 서버로 false 라는 값을 보내어 바꾼다.
                          }),
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => recipeImageDetail),
              );
            },
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                recipeName,
                style: TextStyle(fontSize: 18, color: Colors.white),
                softWrap: true,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(recipeAuthor,
                  style: TextStyle(fontSize: 7, color: Colors.white))),
          Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                description,
                style: TextStyle(fontSize: 12, color: Colors.white),
                softWrap: true,
              )),
        ],
      ),
    );
  }
}
