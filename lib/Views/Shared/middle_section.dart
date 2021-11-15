import 'package:agro_investment/Services/screen_sizes.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custom_container.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Expanded(
        child: Column(
          children: [
            // Container(
            //   height: 90,
            //   margin: const EdgeInsets.symmetric(horizontal: 15),
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         _getTransCont(text: 'Transfer \n Fund', onTapped: () {}),
            //         _getTransCont(text: 'credit \n Wallet', onTapped: () {}),
            //         _getTransCont(text: 'Make \n Withdrawal', onTapped: () {}),
            //       ]),
            // ),
            // verticalRegularSpacing,
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _getTransandShowall(text: 'Farm History', onTapped: () {}),
                  _getTransandShowall(text: 'Show All', onTapped: () {}),
                ],
              ),
            ),
            const Divider(
              color: kBoxFilledColor,
              height: 3,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: ListView(
                  children: [
                    _getListItems(
                      title: 'Farm at Oyo State',
                      subTitle: 'You can also trade tomatoes',
                      imageIcon: 'images/cowemoji.png',
                      onTapped: () {},
                    ),
                    verticalTinySpacing,
                    _getListItems(
                      title: 'Farm at Oyo State',
                      subTitle: 'You can also trade tomatoes',
                      imageIcon: 'images/cowemoji.png',
                      onTapped: () {},
                    ),
                    verticalTinySpacing,
                    _getListItems(
                      title: 'Farm at Oyo State',
                      subTitle: 'You can also trade tomatoes',
                      imageIcon: 'images/cowemoji.png',
                      onTapped: () {},
                    ),
                    verticalTinySpacing,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getListItems(
      {required String? title,
      required String? subTitle,
      required String? imageIcon,
      required void Function()? onTapped,
      bool isShared = false}) {
    return ListTile(
      leading: Image.asset(
        imageIcon.toString(),
        width: 25,
        height: 25,
        color: isShared ? kActiveColor : kTabInactiveColor,
        fit: BoxFit.contain,
      ),
      title: Text(title!),
      subtitle: Text(subTitle!),
      trailing: customContainer(
        width: 100,
        text: 'View Details',
        boxColor: Colors.blue[300],
      ),
    );
  }

  Widget _getTransCont({
    required String? text,
    required void Function()? onTapped,
  }) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kBoxFilledColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: onTapped,
        child: Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }

  Widget _getTransandShowall({
    required String? text,
    required void Function()? onTapped,
  }) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: TextButton(
        onPressed: onTapped,
        child: Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: kActiveColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
