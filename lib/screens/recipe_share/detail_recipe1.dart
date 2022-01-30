import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';

Widget detailRecipe(
  BuildContext context, {
  int likeCount = 0,
  int views = 0,
  var recipeAuthor = "recipeAuthor",
  var recipeName = "recipe Name",
  recipePicture = "",
}) {
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
          height: MediaQuery.of(context).size.height * 4 / 5,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
              image: new DecorationImage(
                  image: ExactAssetImage('assets/images/pancakeMain.jpg'),
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
                        recipeName,
                        style:
                            TextStyle(color: Color(0xff515151), fontSize: 20),
                      ),
                      Text(
                        recipeAuthor,
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
                    '${likeCount}',
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
                  const Icon(
                    Icons.update,
                    size: 40,
                  ),
                  Column(
                    children: [
                      const Text('Total Time',
                          style: TextStyle(
                              color: Color(0xff9B9B9B), fontSize: 11)),
                      const Text(
                        '30 minuts',
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
                  const Text('Views',
                      style: TextStyle(color: Color(0xff9B9B9B), fontSize: 10)),
                  Text(
                    '${views}',
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
              const Text(
                'Category',
                style: TextStyle(color: Color(0xff4ECB71), fontSize: 24),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    color: Color(0xffFFF2D8),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text('bread'),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Container(
            color: Color(0xffF6F6F6),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 2 / 10,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Row(
                    children: [
                      const Text(
                        'Ingredients',
                        style:
                            TextStyle(color: Color(0xffFCE250), fontSize: 24),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Color(0xffFFF2D8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text('Flour 510g'),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffFFF2D8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text('Egg 2'),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffFFF2D8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text('Milk 350ml'),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffFFF2D8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text('sugar 5 spoon'),
                      ),
                    )
                  ],
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
                      child: const Text(
                        'Step',
                        style:
                            TextStyle(color: Color(0xffFF7E55), fontSize: 24),
                      )),
                ],
              ),
              Row(
                children: [
                  const Text('1.put flour 500g, sugat 25g, salt 10g'),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: ExactAssetImage('assets/images/1.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              Row(
                children: [
                  const Text('2.shake and put milk 600ml'),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: ExactAssetImage('assets/images/2.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              Row(
                children: [
                  const Text('3. put 2 eggs'),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: ExactAssetImage('assets/images/3.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              Row(
                children: [
                  const Text('4. put butter 15g'),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: ExactAssetImage('assets/images/4.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              Row(
                children: [
                  const Text('5. shake it well'),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: ExactAssetImage('assets/images/5.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              Row(
                children: [
                  const Text('6. turn on bunner adn adjust to middle heat'),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: ExactAssetImage('assets/images/6.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              Row(
                children: [
                  const Text(
                    '7. Grease with oil, pour in the dough a little, \n and when bubbles form, turn it over.',
                    softWrap: true,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: ExactAssetImage('assets/images/7.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              Row(
                children: [
                  const Text('8. hmmm.. not bad? is not it?'),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: ExactAssetImage('assets/images/8.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              Row(
                children: [
                  const Text('9. enjoy your pancake good bye ~'),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image:
                              ExactAssetImage('assets/images/pancakeMain.jpg'),
                          fit: BoxFit.fitWidth)),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
