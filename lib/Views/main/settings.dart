import 'package:agro_investment/Views/Authentication/login_page.dart';
import 'package:agro_investment/Views/others/about_greenland.dart';
import 'package:agro_investment/Views/others/help_support.dart';
import 'package:agro_investment/Views/payments/saved_cards.dart';
import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool logoutpressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                height: screenHeight(context) * 0.28,
                decoration: BoxDecoration(
                  color: kActiveColor,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Profile Setting',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Alata',
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    imageContainer(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Color(0xFFD8D8D8),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
              child: Text(
                'Profile',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: GREY,
                    fontWeight: FontWeight.w400),
              ),
            ),
            profileItems(context,
                icon: 'assets/icons/profileDetail.png',
                text: 'Profile Details', OnPressed: () {
              // Get.to(() => Profiledetails());
            }),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
              child: Text(
                'Security',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: GREY,
                    fontWeight: FontWeight.w400),
              ),
            ),
            profileItems(context,
                icon: 'assets/icons/savedcards.png',
                text: 'Saved Cards', OnPressed: () {
              Get.to(() => Savedcards());
            }),
            SizedBox(
              height: 8,
            ),
            profileItems(context,
                icon: 'assets/icons/withdrawalaccounts.png',
                text: 'Withdrawal Accounts', OnPressed: () {
              // Get.to(() => WithdrawalAccounts());
            }),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
              child: Text(
                'Account and Support',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: GREY,
                    fontWeight: FontWeight.w400),
              ),
            ),
            profileItems(context,
                icon: 'assets/icons/aboutajobox.png',
                text: 'About Greenland', OnPressed: () {
              Get.to(() => AboutPage());
            }),
            profileItems(context,
                icon: 'assets/icons/helpsupport.png',
                text: 'Help and Support', OnPressed: () {
              Get.to(() => HelpSupportPage());
            }),
            profileItems(context,
                icon: 'assets/icons/aboutajobox.png',
                text: 'Change theme', OnPressed: () {
              Get.bottomSheet(
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text('Light theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text('Dark theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  // barrierColor: Colors.blue,
                  backgroundColor: Colors.white,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0)));
              //pass th data backward
              // var data = await Get.to(ShowDialog());
              // print('the recieved data is $data');
            }),
            SizedBox(
              height: 40,
            ),
            profileItems(context,
                icon: 'assets/icons/logout.png', text: 'Logout', OnPressed: () {
              setState(() {
                logoutpressed = true;
              });
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) => Padding(
                        padding: const EdgeInsets.fromLTRB(30, 200, 30, 260),
                        child: Card(
                          child: Center(
                              child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 34),
                                child:
                                    Image.asset('assets/icons/logoutfaint.png'),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Text(
                                'Logout',
                                style: TextStyle(
                                    fontFamily: 'Alata', fontSize: 24),
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              Text(
                                'Are you sure you want to log out of Ajobox?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                child: Container(
                                  height: 54,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                  ),
                                  child: ButtonTheme(
                                    child: TextButton(
                                      onPressed: () {
                                        Get.offAll(() => LoginPage());
                                      },
                                      child: Center(
                                          child: Text(
                                        'Logout',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400),
                                      )),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: RED,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    logoutpressed = false;
                                  });
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          )),
                        ),
                      ));
            }),
          ],
        ),
      ),
    );
  }
}

Widget profileItems(BuildContext context, {icon, text, OnPressed}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 22),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(icon),
                  SizedBox(
                    width: 11,
                  ),
                  Text(
                    text,
                  )
                ],
              ),
              IconButton(
                  onPressed: OnPressed,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: GREY,
                  ))
            ],
          ),
        )
      ],
    ),
  );
}

Widget imageContainer({image}) {
  return Padding(
    padding: const EdgeInsets.only(right: 20.0),
    child: Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(image ?? 'assets/images/profilePx2.png')),
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Mubarak Hammed',
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontFamily: 'Poppins'),
        ),
      ],
    ),
  );
}
