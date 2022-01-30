import 'package:flutter/material.dart';
import 'package:neighborchefapp/lib/widgets/list/list_sort.dart';
import 'package:neighborchefapp/lib/widgets/list/grid_sort.dart';
import 'package:neighborchefapp/lib/widgets/sidebar/appbar.dart';
import 'package:neighborchefapp/lib/widgets/etc/searchbar.dart';
import 'package:neighborchefapp/lib/utils/styles.dart';

class RecipesMain extends StatefulWidget {
  @override
  _RecipesMainState createState() => _RecipesMainState();
}

class _RecipesMainState extends State<RecipesMain>
    with TickerProviderStateMixin {
  dynamic info = Icons.menu;
  dynamic list = GridSort();
  var pageName = 'Shared Recipes';
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  void changeText() {
    setState(() {
      if (info == Icons.menu) {
        info = Icons.grid_view;
        list = ListSort();
      } else {
        info = Icons.menu;
        list = GridSort();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            appBar(context, pagename: pageName),
            SortBar(),
            //bar(),
            Expanded(
              child: list,
            ),
          ],
        ),
      ),
    );
  }

  Widget SortBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: searchbar(context),
          width: 280,
        ),
        Flexible(
          child: Container(
            width: 110,
            child: ListTile(
              leading: IconButton(
                icon: Icon(info, size: 30),
                color: Colors.white,
                onPressed: changeText,
              ),
              trailing: const Icon(
                Icons.tune,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Styles.orangeColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(13.0),
                  bottomLeft: Radius.circular(13.0)),
            ),
          ),
        ),
      ],
    );
  }
}
