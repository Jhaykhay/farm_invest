import 'package:agro_investment/Views/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'Views/Authentication/signup_page.dart';
// import 'Views/Screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Onboarding(),
    );
  }
}
