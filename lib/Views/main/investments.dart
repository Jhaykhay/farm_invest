import 'package:agro_investment/constants.dart';
import 'package:agro_investment/custom_widgets.dart';
import 'package:flutter/material.dart';

class InvestmentPage extends StatefulWidget {
  const InvestmentPage({Key? key}) : super(key: key);

  @override
  _InvestmentPageState createState() => _InvestmentPageState();
}

class _InvestmentPageState extends State<InvestmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 80.0, 0.0, 0.0),
            child: Text(
              "Your active Investments",
              textAlign: TextAlign.start,
              style: headerStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'An investment in knowledge pays the best interest.',
              style: TextStyle(
                  color: kActiveColor, fontFamily: "Poppins", fontSize: 10),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: GREY,
          ),
          Container(
            //  height: screenHeight(context) * 0.7,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  investmentCard(context,
                      title: 'Rice Farm',
                      image: "assets/images/ricefarm.jpg",
                      unit: '4',
                      month: '5/6 months',
                      location: 'Saki west',
                      size: '456sqr meter'),
                  investmentCard(context,
                      title: 'Maize Farm',
                      image: "assets/images/maizefarm.jpg",
                      unit: '10',
                      month: '2/4 months',
                      location: 'Saki west',
                      size: '1006sqr meter'),
                  investmentCard(context,
                      title: 'Cocoa Farm',
                      image: "assets/images/cocoafarm.jpg",
                      unit: '7',
                      month: '5/12 months',
                      location: 'Saki west',
                      size: '706sqr meter'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget investmentCard(BuildContext context,
    {title, image, unit, month, location, size}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      color: Color(0xFFE8F5E9),
      elevation: 8.0,
      child: Container(
        width: 200,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 17,
                        color: kActiveColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset(
                      image,
                      height: 100,
                      width: 170,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.asset(
                          image,
                          height: 70,
                          width: 100,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.asset(
                          image,
                          height: 70,
                          width: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: screenWidth(context) * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Row(
                            children: [
                              Text(
                                'Unit Purchased:  ',
                                style: TextStyle(
                                    color: kActiveColor,
                                    fontFamily: '`Poppins'),
                              ),
                              Text(
                                unit,
                                style: TextStyle(fontFamily: "Poppins"),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text('Maturity:  ',
                                style: TextStyle(
                                    color: kActiveColor,
                                    fontFamily: '`Poppins')),
                            Text(
                              month,
                              style: TextStyle(fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('LGA:  ',
                                style: TextStyle(
                                    color: kActiveColor,
                                    fontFamily: '`Poppins')),
                            Container(
                              child: Text(
                                location,
                                style: TextStyle(fontFamily: "Poppins"),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Size:  ',
                                style: TextStyle(
                                    color: kActiveColor,
                                    fontFamily: '`Poppins')),
                            Text(
                              size,
                              style: TextStyle(fontFamily: "Poppins"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: Container(
                  //       alignment: Alignment.topRight, child: forwardNavButton()),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
