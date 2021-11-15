import 'package:flutter/material.dart';

Widget starterBottomTerms() {
  return RichText(
    textAlign: TextAlign.center,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: Colors.black38,
      ),
      children: [
        TextSpan(text: "By clicking verify, you agree to our "),
        TextSpan(
            text: "Privacy Policy",
            style: TextStyle(
                color: Color(0xFF846FAA),
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline)),
        TextSpan(text: " our "),
        TextSpan(
          text: "Terms and Conditions",
          style: TextStyle(
            color: Color(0xFF846FAA),
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    ),
  );
}
