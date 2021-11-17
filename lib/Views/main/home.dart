import 'package:agro_investment/constants.dart';
import 'package:agro_investment/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Mubarak";
  String balance = "100,000";
  int _index = 0;
  final PageController tabController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 10, 0),
              child: Container(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_active_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  memberImageContainer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Mubarak Hammed',
                        style: TextStyle(
                            color: kActiveColor,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                right: 10,
                left: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenHeight(context) * 0.15,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: tabController,
                      children: [
                        tabContainer(context, dashboardTab1()),
                        tabContainer(context, dashboardTab1()),
                        tabContainer(context, dashboardTab1()),
                        tabContainer(context, dashboardTab1()),
                      ],
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Your',
                    style: TextStyle(
                        fontFamily: "Alata",
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    ' Investments',
                    style: TextStyle(
                        fontFamily: "Alata",
                        fontSize: 24,
                        color: Color(0xffF57F17),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Swipe to see your investments',
                style: TextStyle(
                    color: kActiveColor, fontFamily: "Poppins", fontSize: 10),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    investmentCard(context,
                        title: 'Rice Farm',
                        image: "assets/images/ricefarm.jpg",
                        unit: 'units: 4',
                        month: '5/6 months'),
                    investmentCard(context,
                        title: 'Cocoa Farm',
                        image: "assets/images/cocoafarm.jpg",
                        unit: 'units: 4',
                        month: '7/12 months'),
                    investmentCard(context,
                        title: 'Maize Farm',
                        image: "assets/images/maizefarm.jpg",
                        unit: 'units: 4',
                        month: '2/4 months'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'New',
                    style: TextStyle(
                        fontFamily: "Alata",
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    ' Deals',
                    style: TextStyle(
                        fontFamily: "Alata",
                        fontSize: 24,
                        color: Color(0xffF57F17),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Check out new stocks',
                style: TextStyle(
                    color: kActiveColor, fontFamily: "Poppins", fontSize: 10),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            activityContainer(context,
                name: "Aloe vera Plantation",
                details: 'Aloe vera is a fast growing crop that is very useful',
                price: '₦20,000 per Unit')
          ],
        ),
      ),
    );
  }

  Widget memberImageContainer({image}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(image ?? 'assets/images/profilePx2.png')),
            ),
          ),
        ],
      ),
    );
  }

  Widget tabContainer(BuildContext context, child) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Container(
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: kActiveColor),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  offset: Offset(1.5, 1),
                  blurRadius: 2),
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  offset: Offset(-1, 1.5),
                  blurRadius: 2),
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  offset: Offset(-1, 1.5),
                  blurRadius: 2),
            ]),
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Row(
          children: [
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
    );
  }

  Container dot({color}) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color ?? GREY.withOpacity(0.2)),
    );
  }

  Widget dashboardTab1() {
    return Container(
      child: InkWell(
        onTap: () {
          // Get.to(() => FundWithdraw());
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Grand Balance',
                style: TextStyle(fontSize: 16, fontFamily: "Poppins")),
            SizedBox(height: 5),
            Text('₦$balance',
                style: TextStyle(
                    color: kActiveColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    fontFamily: "Poppins")),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(2)),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      'View',
                      style: TextStyle(fontSize: 14, color: kActiveColor),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget investmentCard(BuildContext context, {title, image, unit, month}) {
  return Card(
    elevation: 8.0,
    child: Container(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                width: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  unit,
                  style: TextStyle(fontFamily: "Poppins"),
                ),
                Text(
                  month,
                  style: TextStyle(fontFamily: "Poppins"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                alignment: Alignment.topRight, child: forwardNavButton()),
          )
        ],
      ),
    ),
  );
}

Widget activityContainer(BuildContext context, {name, details, price}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFFE8F5E9),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.fromLTRB(0, 15, 0, 7),
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(details, style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  price,
                  style: TextStyle(color: GREY, fontSize: 10),
                ))
          ],
        ),
      ),
    ),
  );
}
