import 'package:flutter/material.dart';

Widget customContainer({
  required String text,
  Color? textColor,
  Color? boxColor,
  double? width,
}) {
  return Container(
    height: 50,
    width: width,
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    ),
    decoration: BoxDecoration(
      color: boxColor,
      borderRadius: BorderRadius.circular(13),
    ),
  );
}
