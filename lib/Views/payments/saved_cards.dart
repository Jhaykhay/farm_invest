import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Savedcards extends StatefulWidget {
  const Savedcards({Key? key}) : super(key: key);

  @override
  _SavedcardsState createState() => _SavedcardsState();
}

class _SavedcardsState extends State<Savedcards> {
  bool isCardAvailable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isCardAvailable
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 60.0, 0.0, 20.0),
                      child: Container(
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: GREY,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 69, 0),
                      child: Text(
                        "Saved cards",
                        textAlign: TextAlign.start,
                        style: headerStyle(),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    cardContainer(context,
                        cardIcon: 'assets/images/visa.png',
                        lastFourText: '1234'),
                    SizedBox(
                      height: 16,
                    ),
                    cardContainer(context,
                        cardIcon: 'assets/images/visa.png',
                        lastFourText: '4324'),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 20),
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: kActiveColor,
                        child: Icon(Icons.add),
                      ),
                    )
                  ],
                ),
              )
            : ListView(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 60.0, 0.0, 20.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: GREY,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 69, 0),
                      child: Text(
                        "Saved cards",
                        textAlign: TextAlign.start,
                        style: headerStyle(),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                        child: Column(
                      children: [
                        Container(
                            height: 200,
                            child: Lottie.asset("assets/lottie/empty.json")),
                        SizedBox(
                          height: 29,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                              'You have no saved card. You can see saved card after you fund your wallet',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: GREY,
                                  fontFamily: 'Poppins',
                                  fontSize: 15)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: kActiveColor,
                          child: Icon(Icons.add),
                        ),
                      ],
                    )),
                  ]));
  }
}

Widget cardContainer(BuildContext context, {cardIcon, lastFourText}) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Image.asset(cardIcon),
                ),
              ],
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(children: <Widget>[
                  Text(
                    ". . . .",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    ". . . .",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    ". . . .",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      lastFourText,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  )
                ])),
          ],
        ),
      ));
}
