import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/sidebar.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';
import 'package:neighborchefapp/widgets/etc/searchbar.dart';
import 'package:neighborchefapp/widgets/etc/recommanded_village.dart';
import 'package:neighborchefapp/test/test_recommended_village.dart';

class VillageMain extends StatefulWidget {
  const VillageMain({Key? key}) : super(key: key);

  @override
  _VillageMainState createState() => _VillageMainState();
}

class _VillageMainState extends State<VillageMain> {
  var pageName = "Village";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideBar(context),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          styleAppBar(
            context,
            styleAppBarIconText: '',
            styleAppBarIcon: null,
            styleAppBarNavigate: null,
            styleAppBarTitle: pageName,
            styleAppBarIcon2: null,
            styleAppBarIconText2: '',
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: const Text(
                'Meet various villages.',
                style: TextStyle(fontSize: 24, fontFamily: 'poiret'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 60, 0, 20),
            child: Column(
              children: [
                searchbar(context),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Container(
              height: 330,
              child: TestRecommendedVillage(),
            ),
          )
        ],
      ),
    );
  }
}
