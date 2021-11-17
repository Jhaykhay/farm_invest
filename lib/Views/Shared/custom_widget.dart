import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';

Widget haveAccountSwitch({onTap, greyText, coloredText}) {
  return Center(
    child: InkWell(
      onTap: onTap,
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: greyText,
            style: TextStyle(color: GREY, fontSize: 12),
          ),
          TextSpan(
            text: coloredText,
            style: TextStyle(
                color: kActiveColor, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ]),
      ),
    ),
  );
}
