// import 'package:flutter/material.dart';
// import 'package:neighborchefapp/widgets/etc/piclist.dart';
// import 'package:http/http.dart' as http;

// class Bookmark extends StatefulWidget {
//   @override
//   _BookmarkState createState() => _BookmarkState();
// }

// class _BookmarkState extends State<Bookmark> {
//   var _text = "Http Example";
//   List<Data> _datas = []; // get image url from server

//   Future _fetchPosts() async {
//     final response = await http.get(Uri.parse("URL"));
//     _text = utf8.decode(response.bodyBytes);
//     var dataObjsJson = jsonDecode(_text)['post'] as List;
//     final List<Data> parsedResponse =
//         dataObjsJson.map((dataJson) => Data.fromJson(dataJson)).toList();
//     setState(() {
//       _datas.clear();
//       _datas.addAll(parsedResponse);
//     });
//     print(parsedResponse);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Column(
//           children: <Widget>[
//             appBar(context, pagename: 'My Bookmark'),
//             myHomePageState(_datas), // it works even if you put a list of image urls
//           ],
//         ),
//       ),
//     );
//   }
// }
