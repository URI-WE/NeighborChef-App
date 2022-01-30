import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

Widget villageProfileDetail(BuildContext context,
    {int postsNumber = 0,
    int memberNumber = 0,
    var villageName = "Village Name",
    var villageDescript = "Village Descript",
    var date = "",
    villageBanner = "",
    villageProfile = ""}) {
  var pageName = "Recipe";
  return Scaffold(
    backgroundColor: Colors.white,
    body: ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        styleAppBar(
          context,
          styleAppBarIcon2: null,
          styleAppBarIconText2: '',
          styleAppBarIcon: Icons.bookmark_border_outlined,
          styleAppBarIconText: '',
          styleAppBarTitle: pageName,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 1 / 5,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(villageBanner), fit: BoxFit.fitWidth)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Column(
                    children: [
                      Text(villageName),
                      Text(villageDescript),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: NetworkImage(villageProfile),
                            fit: BoxFit.fill)),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      const Text('Posts',
                          style: TextStyle(
                              color: Color(0xff9B9B9B), fontSize: 11)),
                      Text(
                        '${postsNumber}',
                        style:
                            TextStyle(color: Color(0xffFF7E55), fontSize: 13),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      const Text(
                        'Member',
                        style:
                            TextStyle(color: Color(0xff9B9B9B), fontSize: 11),
                      ),
                      Text(
                        '${memberNumber}',
                        style:
                            TextStyle(color: Color(0xffFF7E55), fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  const Text('Founding Date',
                      style: TextStyle(color: Color(0xff9B9B9B), fontSize: 10)),
                  Text(
                    '${date}',
                    style: TextStyle(color: Color(0xffFF7E55), fontSize: 11),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
          child: Container(
            height: 1,
            width: MediaQuery.of(context).size.width * 4 / 5,
            color: Color(0xffC4C4C4),
          ),
        ),
      ],
    ),
  );
}
