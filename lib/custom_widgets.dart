import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';

Container forwardNavButton() {
  return Container(
      height: 40,
      width: 40,
      child: Center(
          child: Icon(
        Icons.arrow_forward,
        color: kActiveColor,
      )),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: GREY.withOpacity(0.1)));
}
