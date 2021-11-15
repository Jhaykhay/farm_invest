import 'package:agro_investment/Views/Shared/bottom_tool_bar.dart';
import 'package:agro_investment/Views/Shared/middle_section.dart';
import 'package:agro_investment/Views/Shared/top_section_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children:const [
          TopSectionBar(),
          MiddleSection(),
          BottomToolBar(),
        ],
      )),
    );
  }
}
