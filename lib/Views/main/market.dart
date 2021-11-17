import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 80.0, 0.0, 0.0),
            child: Text(
              "Buy fresh Produce",
              textAlign: TextAlign.start,
              style: headerStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Get directly from farm',
              style: TextStyle(
                  color: kActiveColor, fontFamily: "Poppins", fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
