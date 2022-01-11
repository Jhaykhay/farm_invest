import 'package:flutter/material.dart';

const kActiveColor = Color(0xFF52734c);
const kTabInactiveColor = Colors.black;
const kBoxFilledColor = Color(0xffc0e2bc);
const Color LIGHT_GREY = Color(0xFFF3F2F7);
const Color GREY = Color(0xFF767676);
const Color RED = Color(0xFFFF1A1A);
const Color BODY_COLOR = Color(0xFF555555);

TextStyle headerStyle() =>
    TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Alata', fontSize: 24);
TextStyle subHeaderStyle() =>
    TextStyle(color: Color(0xFF555555), height: 1.4, fontSize: 14);
TextStyle greylabelStyle() =>
    TextStyle(fontSize: 10, fontFamily: 'Poppins', color: GREY);

const String EMPTY_EMAIL_FIELD = 'Email field cannot be empty!';
const String EMPTY_TEXT_FIELD = 'Field cannot be empty!';
const String EMPTY_PASSWORD_FIELD = 'Password field cannot be empty';
const String invalidEmailField =
    "Email provided isn\'t valid.Try another email address";
const String PASSWORD_LENGTH_ERROR = 'Password length must be greater than 6';
const String EMAIL_REGEX = '[a-zA-Z0-9\+\.\_\%\-\+]{1,256}' +
    '\\@' +
    '[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}' +
    '(' +
    '\\.' +
    '[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}' +
    ')+';
const String PHONE_NUMBER_REGEX = r'0[789][01]\d{8}';
const String PHONE_NUMBER_LENGTH_ERROR = 'Phone number must be 11 digits';
const String INVALID_PHONE_NUMBER_FIELD =
    "Number provided isn\'t valid.Try another phone number";

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
