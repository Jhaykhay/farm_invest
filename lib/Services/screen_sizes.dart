import 'package:flutter/material.dart';

//horizontal spacing
const Widget horizontalTinySpacing = SizedBox(width: 5);
const Widget horizontalSmallSpacing = SizedBox(width: 10);
const Widget horizontalRegularSpacing = SizedBox(width: 18);
const Widget horizontalMediumSpacing = SizedBox(width: 25);
const Widget horizontalLargeSpacing = SizedBox(width: 35);
const Widget horizontalXLargeSpacing = SizedBox(width: 50);
//vertical spacing
const Widget verticalTinySpacing = SizedBox(height: 5);
const Widget verticalSmallSpacing = SizedBox(height: 10);
const Widget verticalRegularSpacing = SizedBox(height: 18);
const Widget verticalMediumSpacing = SizedBox(height: 25);
const Widget verticalLargeSpacing = SizedBox(height: 35);
const Widget verticalXLargeSpacing = SizedBox(height: 50);
//Screen helper
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
//screen-height and width as percentage
double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;
double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;
