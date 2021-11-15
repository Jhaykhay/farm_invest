import 'package:agro_investment/Services/screen_sizes.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custom_container.dart';

class TopSectionBar extends StatelessWidget {
  const TopSectionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Hi, Kehny",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const Text(
            "It's nice to have you here",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          verticalTinySpacing,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/tractor.png',
              ),
              GestureDetector(
                onTap: () {},
                child: customContainer(
                  text: 'Please fund a farm',
                  width: 140,
                  boxColor: kBoxFilledColor,
                  textColor: Colors.white,
                ),
              ),
              horizontalTinySpacing,
            ],
          ),
        ],
      ),
    );
  }
}
