import 'package:flutter/material.dart';

Widget styleButton(
  BuildContext context, {
  double styleButtonWidth = 200,
  double styleButtonHeight = 50,
  styleButtonColor = Color,
  styleButtonTextColor = Color,
  var styleButtonNavigate = '',
  var styleButtonText = 'styleButton',
  styleButtonIcon = Icons.question_answer,
  double styleButtonIconSize = 12,
  double styleButtonTextSize = 12,
  double styleButtonRadiusValue = 10,
  double styleButtonBoderWidth = 3,
  styleButtonBorderColor = Color,
  styleButtonIconColor = Colors.green,
  styleButtonNavigatorState = Navigator.push,
}) {
  return Container(
    height: styleButtonHeight,
    width: styleButtonWidth,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(styleButtonRadiusValue)),
        border: Border.all(
            color: styleButtonBorderColor, width: styleButtonBoderWidth),
        color: styleButtonColor),
    child: TextButton.icon(
        icon: Icon(
          styleButtonIcon,
          size: styleButtonIconSize,
          color: styleButtonIconColor,
        ),
        label: Text(
          styleButtonText,
          style: TextStyle(
            fontSize: styleButtonTextSize,
            color: styleButtonTextColor,
          ),
        ),
        onPressed: () {
          styleButtonNavigatorState(context,
              MaterialPageRoute(builder: (context) => styleButtonNavigate));
        }),
  );
}
