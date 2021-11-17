import 'package:agro_investment/Views/Shared/button.dart';
import 'package:agro_investment/Views/main/investments.dart';
import 'package:agro_investment/Views/main/market.dart';
import 'package:agro_investment/Views/main/settings.dart';
import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentTabIndex = 0;
  bool shouldPop = false;
  bool isSetup = true;

  changePop() {
    shouldPop = !shouldPop;
  }

  Future<bool> shouldExit() async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('Close app?'),
            content: Text("Press back again to close app"),
            actions: <Widget>[
              TextButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop(false);
                },
              ),
              TextButton(
                child: Text("Alright"),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.of(context, rootNavigator: true).pop(true);
                },
              )
            ],
          );
        });
  }

  @override
  void initState() {
    var page = Get.arguments;
    if (page != null) {
      setState(() {
        _currentTabIndex = page['index'];
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      HomePage(),
      InvestmentPage(),
      MarketPage(),
      SettingsPage(),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/home.png',
            height: 25,
            color: Colors.black38,
          ),
          label: 'Home',
          activeIcon: Image.asset(
            'assets/images/home.png',
            height: 25,
            color: kActiveColor,
          )),
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/investment.png',
            height: 25,
            color: Colors.black38,
          ),
          label: ' Investments',
          activeIcon: Image.asset(
            'assets/images/investment.png',
            height: 25,
            color: kActiveColor,
          )),
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/market.png',
            height: 25,
            color: Colors.black38,
          ),
          label: 'Market ',
          activeIcon: Image.asset(
            'assets/images/market.png',
            height: 25,
            color: kActiveColor,
          )),
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/settings.png',
            height: 25,
            color: Colors.black38,
          ),
          label: 'Settings',
          activeIcon: Image.asset(
            'assets/images/settings.png',
            height: 25,
            color: kActiveColor,
          )),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      selectedLabelStyle: TextStyle(color: kActiveColor, fontSize: 10),
      unselectedLabelStyle: TextStyle(color: GREY, fontSize: 10),
      showUnselectedLabels: true,
      showSelectedLabels: true,
      elevation: 0,
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: isSetup
          ? Padding(
              padding: const EdgeInsets.fromLTRB(24, 40, 24, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 38),
                  Text('About GreenLand'),
                  SizedBox(height: 35),
                  ajoboxOffers('AgroInvestment',
                      'You can put money in your account in a flexible manner.\nSave among your preferred circle and you do not have to\nworry about.'),
                  ajoboxOffers('Farm Market',
                      'You can put money in your account in a flexible manner.\nSave among your preferred circle and you do not have to\nworry about.'),
                  ajoboxOffers('Financial Services',
                      'You can put money in your account in a flexible manner.\nSave among your preferred circle and you do not have to\nworry about.'),
                  SizedBox(height: screenHeight(context) * 0.13),
                  defaultButton(
                    text: 'Go to Home',
                    onPressed: () {
                      setState(() {
                        isSetup = false;
                      });
                    },
                  ),
                ],
              ),
            )
          : _kTabPages[_currentTabIndex],
      bottomNavigationBar: isSetup ? Container(height: 60) : bottomNavBar,
    );
  }
}

Widget ajoboxOffers(title, desc) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Alata',
          ),
        ),
        Text(
          desc,
          style: TextStyle(fontSize: 12, height: 1.6, color: BODY_COLOR),
        )
      ],
    ),
  );
}
