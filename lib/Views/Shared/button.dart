import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';

Widget defaultButton({onPressed, text, color}) {
  return Container(
    height: 54,
    margin: const EdgeInsets.symmetric(
      vertical: 16.0,
    ),
    child: ButtonTheme(
      child: TextButton(
        onPressed: onPressed,
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins"),
        )),
      ),
    ),
    decoration: BoxDecoration(
      color: color ?? kActiveColor,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

Widget transparentButton({onPressed, text, color}) {
  return Container(
    height: 54,
    margin: const EdgeInsets.symmetric(
      vertical: 16.0,
    ),
    child: ButtonTheme(
      child: TextButton(
        onPressed: onPressed,
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: kActiveColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins"),
        )),
      ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: kActiveColor,
        )),
  );
}
