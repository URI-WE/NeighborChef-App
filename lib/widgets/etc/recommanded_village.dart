import 'package:flutter/material.dart';
import 'package:neighborchefapp/api/recommanded_village.dart';
import 'package:neighborchefapp/screens/village/village_profile.dart';

class RecommadedVillage extends StatefulWidget {
  const RecommadedVillage({Key? key}) : super(key: key);

  @override
  _RecommadedVillageState createState() => _RecommadedVillageState();
}

class _RecommadedVillageState extends State<RecommadedVillage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        VillageCard(context,
            villageName: villageName[0],
            villageDescript: villageDescript[0],
            recipePicture: villageProfile[0],
            villageBookmarkState: bookmark[0],
            recipeImageDetail: villageProfileDetail(context,
                villageName: villageName[0],
                villageDescript: villageDescript[0],
                date: foundingDate[0],
                villageBanner: villageBanner[0],
                villageProfile: villageProfile[0],
                memberNumber: member[0],
                postsNumber: postNumber[0]),
            cardColorTheme: const Color(0xFFD18A8A)),
      ],
    );
  }
}

Widget VillageCard(
  BuildContext context, {
  var villageName = '',
  var villageDescript = '',
  recipePicture = 'nonetwork.png',
  cardColorTheme = Color,
  villageBookmarkState = Icons.bookmark_border,
  recipeImageDetail = '',
  int posts = 0,
  int member = 0,
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
                image: DecorationImage(
                    image: NetworkImage(recipePicture), fit: BoxFit.fill)),
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
                          villageBookmarkState,
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
              villageName,
              style: TextStyle(fontSize: 18, color: Colors.white),
              softWrap: true,
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(villageDescript,
                style: TextStyle(fontSize: 7, color: Colors.white))),
        Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              'Posts: ${posts}',
              style: TextStyle(fontSize: 12, color: Colors.white),
              softWrap: true,
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              'Member: ${member}',
              style: TextStyle(fontSize: 12, color: Colors.white),
              softWrap: true,
            )),
      ],
    ),
  );
}
