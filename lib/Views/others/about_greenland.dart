import 'package:agro_investment/Views/main/nav_control.dart';
import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 60.0, 0.0, 20.0),
            child: Container(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
                color: GREY,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 45, 0, 0),
            child: Row(
              children: [
                Text(
                  "About Greenland",
                  textAlign: TextAlign.start,
                  style: headerStyle(),
                ),
              ],
            ),
          ),
          SizedBox(height: 38),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                ajoboxOffers('AgroInvestment',
                    'You can put money in your account in a flexible manner.\nSave among your preferred circle and you do not have to\nworry about.'),
                ajoboxOffers('Farm Market',
                    'You can put money in your account in a flexible manner.\nSave among your preferred circle and you do not have to\nworry about.'),
                ajoboxOffers('Financial Services',
                    'You can put money in your account in a flexible manner.\nSave among your preferred circle and you do not have to\nworry about.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
