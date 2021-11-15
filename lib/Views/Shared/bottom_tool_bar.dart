// import 'package:agro_investment/Services/screen_sizes.dart';
import 'package:agro_investment/Views/Screens/account_screen.dart';
import 'package:agro_investment/Views/Screens/farm_screen.dart';
import 'package:agro_investment/Views/Screens/transaction_screen.dart';
import 'package:agro_investment/Views/Shared/seacrh_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants.dart';

class BottomToolBar extends StatelessWidget {
  static const double navIconSize = 25.0;
  static const double buttonSizeWidth = 20.0;

  const BottomToolBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _getNavBarIcons(
          text: 'Transaction',
          imageIcon: 'images/transicon.png',
          isShared: true,
          onTapped: () {
            Get.to(
              const TransactionScreen(),
            );
          },
        ),
        _getNavBarIcons(
          text: 'Farm',
          imageIcon: 'images/tractor.png',
          isShared: true,
          onTapped: () {
            Get.to(
              const FarmScreen(),
            );
          },
        ),
        FloatingActionButton(
          backgroundColor: kActiveColor,
          onPressed: () {},
          child: Image.asset(
            'images/homelogo.png',
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
        _getNavBarIcons(
          text: 'Search',
          imageIcon: 'images/profileicon.png',
          isShared: true,
          onTapped: () {
            showSearch(context: context, delegate: DataSearch());
          },
        ),
        _getNavBarIcons(
          text: 'Account',
          imageIcon: 'images/accounticon.png',
          isShared: true,
          onTapped: () {
            Get.to(
              const AccountScreen(),
            );
          },
        ),
      ],
    );
  }

  Widget _getNavBarIcons(
      {required String? text,
      required String? imageIcon,
      bool isSize = false,
      required void Function()? onTapped,
      bool isShared = false}) {
    return Column(
      children: [
        Image.asset(
          imageIcon.toString(),
          width: 25,
          height: 25,
          color: isShared ? kActiveColor : kTabInactiveColor,
          fit: BoxFit.contain,
        ),
        TextButton(
          onPressed: onTapped,
          child: Text(
            text!,
            style: TextStyle(
              color: isShared ? kActiveColor : kTabInactiveColor,
              fontSize: isSize ? 20.0 : 15,
            ),
          ),
        ),
      ],
    );
  }

  Widget get customHomeIcon => SizedBox(
        width: 45,
        height: 26,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              width: buttonSizeWidth,
              decoration: BoxDecoration(
                color: kActiveColor,
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: buttonSizeWidth,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            Container(
              height: double.infinity,
              width: buttonSizeWidth,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(7),
              ),
              child: const Icon(
                Icons.home,
                size: 20,
              ),
            ),
          ],
        ),
      );
}
