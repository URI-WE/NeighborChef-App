// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:neighborchefapp/lib/utils/styles.dart';
// import 'package:neighborchefapp/lib/widgets/list/head_widget.dart';

// Widget GridSort({int a = 1}) {
//   return Container(
//     margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
//     child: StaggeredGridView.countBuilder(
//       scrollDirection: Axis.vertical,
//       shrinkWrap: true,
//       physics: BouncingScrollPhysics(),
//       crossAxisCount: 2,
//       crossAxisSpacing: 15,
//       mainAxisSpacing: 15,
//       itemCount: imageList.length,
//       itemBuilder: (context, index) {
//         return ClipRRect(
//           borderRadius: const BorderRadius.all(Radius.circular(13)),
//           child: Column(
//             children: <Widget>[
//               Container(
//                 child: Image.network(
//                   imageList[index],
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Styles.greyCardBackground,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(8, 8, 8, 13),
//                   child: Column(
//                     children: a == 1
//                         ? <Widget>[
//                             NameWidget(index),
//                             SizedBox(height: 10),
//                             InfoWidget(index),
//                           ]
//                         : <Widget>[
//                             NameWidget(index),
//                             SizedBox(height: 10),
//                             PriceWidget(index),
//                             SizedBox(height: 10),
//                             LocationDate(index)
//                           ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//       staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
//     ),
//   );
// }
