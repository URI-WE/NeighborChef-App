// import 'package:flutter/material.dart';
// import 'package:neighborchefapp/lib/utils/styles.dart';
// import 'package:neighborchefapp/lib/widgets/list/head_widget.dart';

// Widget ListSort({int a = 1}) {
//   return Container(
//     margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
//     child: ListView.builder(
//       physics: BouncingScrollPhysics(),
//       scrollDirection: Axis.vertical,
//       shrinkWrap: true,
//       itemExtent: 133,
//       itemCount: imageList.length,
//       itemBuilder: (BuildContext context, int index) {
//         return Row(
//           children: <Widget>[
//             ClipRRect(
//               borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(13.0),
//                   bottomLeft: Radius.circular(13.0)),
//               child: Image.network(
//                 imageList[index],
//                 height: 120,
//                 width: 120,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Container(
//               width: MediaQuery.of(context).size.height * 0.25, //have to fix
//               height: 120,
//               decoration: BoxDecoration(
//                 color: Styles.greyCardBackground,
//                 borderRadius: const BorderRadius.only(
//                     topRight: Radius.circular(13.0),
//                     bottomRight: Radius.circular(13.0)),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.fromLTRB(17, 14, 8, 13),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: a == 1
//                       ? <Widget>[
//                           NameWidget(index, size: 3),
//                           SizedBox(height: 15),
//                           InfoWidget(index, size: 2),
//                         ]
//                       : <Widget>[
//                           NameWidget(index),
//                           SizedBox(height: 10),
//                           PriceWidget(index, size: 4),
//                           SizedBox(height: 10),a
//                           LocationDate(index, size: 1)
//                         ],
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     ),
//   );
// }
