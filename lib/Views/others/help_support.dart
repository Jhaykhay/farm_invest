import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';

class HelpSupportPage extends StatefulWidget {
  const HelpSupportPage({Key? key}) : super(key: key);

  @override
  _HelpSupportPageState createState() => _HelpSupportPageState();
}

class _HelpSupportPageState extends State<HelpSupportPage> {
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
                icon: Icon(Icons.arrow_back_ios),
                color: GREY,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 69, 0),
            child: Text(
              "Help and Support",
              textAlign: TextAlign.start,
              style: headerStyle(),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Contact Us',
              style: TextStyle(fontFamily: 'Alata', fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          contactItems(context, head: 'Support@greenland.com', body: 'Email'),
          SizedBox(
            height: 16,
          ),
          contactItems(context, head: '@greenlandsupport', body: 'Twitter'),
          SizedBox(
            height: 16,
          ),
          contactItems(context, head: '@greenland_support', body: 'Telegram'),
          SizedBox(
            height: 32,
          ),
          Divider(
            color: GREY,
          ),
          SizedBox(
            height: 29,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Articles and FAQs',
              style: TextStyle(fontFamily: 'Alata', fontSize: 16),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We have an extensive collection of articles that cover all you need to know about Greenland.',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 11),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Visit our blog',
                    style: TextStyle(
                        color: kActiveColor,
                        fontFamily: 'Poppins',
                        fontSize: 11),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget contactItems(context, {head, body, onPressed, icon}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: screenWidth(context) * 1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 0, 5),
                child: Text(
                  head,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: kActiveColor,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  body,
                  style: greylabelStyle(),
                ),
              )
            ],
          ),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: GREY,
              ))
        ],
      ),
    ),
  );
}
