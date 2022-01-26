import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

class DetailRecipe1 extends StatefulWidget {
  const DetailRecipe1({Key? key}) : super(key: key);

  @override
  _DetailRecipe1State createState() => _DetailRecipe1State();
}

class _DetailRecipe1State extends State<DetailRecipe1> {
  @override
  var pageName = 'Recipe';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          styleAppBar(
            context,
            styleAppBarIcon2: Icons.more_horiz,
            styleAppBarIconText2: '',
            styleAppBarIcon: Icons.bookmark_border_outlined,
            styleAppBarIconText: '',
            styleAppBarTitle: pageName,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 4 / 5,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://picsum.photos/250?image=1',
                    ),
                    fit: BoxFit.fitWidth)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                    Column(
                      children: <Widget>[
                        Text(
                          'Recipe Name',
                          style:
                              TextStyle(color: Color(0xff515151), fontSize: 20),
                        ),
                        Text(
                          'Recipe Author',
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 10),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                    Text(
                      'nember',
                      style: TextStyle(fontSize: 11, color: Color(0xffFF7E55)),
                    )
                  ],
                )
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
                    Icon(
                      Icons.update,
                      size: 40,
                    ),
                    Column(
                      children: [
                        Text('Total Time',
                            style: TextStyle(
                                color: Color(0xff9B9B9B), fontSize: 11)),
                        Text(
                          'minuts',
                          style:
                              TextStyle(color: Color(0xffFF7E55), fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.directions_run),
                    Column(
                      children: [
                        const Text(
                          'Difficulty',
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 11),
                        ),
                        const Text(
                          'Easy',
                          style:
                              TextStyle(color: Color(0xffFF7E55), fontSize: 13),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('Views',
                        style:
                            TextStyle(color: Color(0xff9B9B9B), fontSize: 10)),
                    Text(
                      '2k',
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
          Padding(
            padding: EdgeInsets.fromLTRB(30, 15, 30, 40),
            child: Row(
              children: [
                Text(
                  'Category',
                  style: TextStyle(color: Color(0xff4ECB71), fontSize: 24),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: Container(
              color: Color(0xffF6F6F6),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1 / 10,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Row(
                      children: [
                        Text(
                          'Ingredients',
                          style:
                              TextStyle(color: Color(0xffFCE250), fontSize: 24),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: Text('Step')),
                  ],
                ),
                Row(
                  children: [
                    Text('recipe destript'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
