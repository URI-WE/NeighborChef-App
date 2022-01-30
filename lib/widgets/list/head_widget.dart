// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:neighborchefapp/utils/styles.dart';

// Widget NameWidget(int index, {double size = 0}) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             nameList[index],
//             textAlign: TextAlign.left,
//             style: TextStyle(
//               color: Styles.darkGreyColor,
//               fontWeight: FontWeight.bold,
//               fontSize: 16 + size,
//             ),
//           ),
//           Text(
//             'by ' + userList[index],
//             style: TextStyle(
//               color: Styles.greyColor,
//               fontSize: 8 + size,
//             ),
//           ),
//         ],
//       ),
//       Icon(
//         Icons.bookmark_border_outlined,
//         color: Styles.darkGreyColor,
//         size: 18 + size,
//       ),
//     ],
//   );
// }

// Widget InfoWidget(int index, {double size = 0}) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Row(
//         children: [
//           Row(
//             children: [
//               Icon(
//                 Icons.history,
//                 color: Styles.darkGreyColor,
//                 size: 22 + size,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Total Time',
//                     style: TextStyle(
//                       color: Styles.greyColor,
//                       fontSize: 8 + size,
//                     ),
//                   ),
//                   Text(
//                     timeList[index].toString() + 'min',
//                     style: TextStyle(
//                       color: Styles.orangeColor,
//                       fontSize: 9 + size,
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(width: 13),
//           Row(
//             children: [
//               Icon(
//                 Icons.directions_run,
//                 color: Styles.darkGreyColor,
//                 size: 22 + size,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Difficulty',
//                     style: TextStyle(
//                       color: Styles.greyColor,
//                       fontSize: 8 + size,
//                     ),
//                   ),
//                   Text(
//                     difficutyList[index],
//                     style: TextStyle(
//                       color: Styles.orangeColor,
//                       fontSize: 9 + size,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//       Column(
//         children: [
//           Icon(
//             Icons.favorite_border,
//             //color: Styles.darkGreyColor,

//             size: 15 + size,
//           ),
//           Text(
//             likeList[index].toString(),
//             style: TextStyle(
//               color: Styles.orangeColor,
//               fontSize: 8 + size,
//             ),
//           ),
//         ],
//       ),
//     ],
//   );
// }

// Widget PriceWidget(int index, {double size = 0}) {
//   return Align(
//     alignment: Alignment.bottomLeft,
//     child: Text(
//       "US\$" + priceList[index].toString(),
//       style: TextStyle(
//         color: Styles.greenColor,
//         fontSize: 17 + size,
//         fontWeight: FontWeight.bold,
//         fontFamily: 'Arial',
//       ),
//     ),
//   );
// }

// Widget LocationDate(int index, {double size = 0}) {
//   return Column(
//     children: [
//       Align(
//         alignment: Alignment.bottomLeft,
//         child: Text(
//           'Created Date: ' + dateList[index],
//           style: TextStyle(
//             color: Styles.greyColor,
//             fontSize: 6 + size,
//           ),
//         ),
//       ),
//       Align(
//         alignment: Alignment.bottomLeft,
//         child: Text(
//           locationList[index],
//           style: TextStyle(
//             color: Styles.greyColor,
//             fontSize: 6 + size,
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget bar() {
//   return Container(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text('Shared Recipes'),
//         Text('Food Share'),
//         Text('Cooking Class')
//       ],
//     ),
//   );
// }
