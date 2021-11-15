import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'Views/Authentication/signup_page.dart';
import 'Views/Screens/startup_view.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartupView(),
    );
  }
}
