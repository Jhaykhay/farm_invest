import 'package:agro_investment/Views/Authentication/login_page.dart';
import 'package:agro_investment/Views/Shared/button.dart';
import 'package:agro_investment/Views/onboarding/animated_indicator.dart';
import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

const blue = Color(0xFF4781ff);
const kTitleStyle = TextStyle(
    fontSize: 30, color: Color(0xFF01002f), fontWeight: FontWeight.bold);
const kSubtitleStyle =
    TextStyle(fontSize: 22, color: kActiveColor, fontFamily: "Poppins");

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = new PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            child: PageView(
                controller: pageController,
                physics: NeverScrollableScrollPhysics(),
                children: [
              Slide(
                hero: SvgPicture.asset("assets/images/farm-ideas.svg"),
                title: "Boost your traffic",
                subtitle:
                    "Outreach to many social networks to improve your statistics",
                onNext: nextPage,
              ),
              Slide(
                  hero: SvgPicture.asset("assets/images/farm_girl.svg"),
                  title: "Give the best solution",
                  subtitle:
                      "We will give best solution for your business isues",
                  onNext: nextPage),
              Slide(
                  hero: SvgPicture.asset("assets/images/play-time.svg"),
                  title: "Reach the target",
                  subtitle:
                      "With our help, it will be easier to achieve your goals",
                  onNext: nextPage),
              Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultButton(text: 'SIGN UP'),
                      Text(
                        'Already have an account?',
                        style: subHeaderStyle(),
                      ),
                      transparentButton(
                          text: 'LOGIN',
                          color: kActiveColor,
                          onPressed: () {
                            Get.to(() => LoginPage());
                          })
                    ],
                  ),
                )),
              )
            ])),
      ),
    );
  }

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
  }
}

class Slide extends StatelessWidget {
  final Widget hero;
  final String title;
  final String subtitle;
  final VoidCallback onNext;

  const Slide(
      {required this.hero,
      required this.title,
      required this.subtitle,
      required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: hero),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  title,
                  style: headerStyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  subtitle,
                  style: subHeaderStyle(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 35,
                ),
                ProgressButton(onNext: onNext),
              ],
            ),
          ),
          GestureDetector(
            onTap: onNext,
            child: Text(
              "Skip",
              style: kSubtitleStyle,
            ),
          ),
          SizedBox(
            height: 4,
          )
        ],
      ),
    );
  }
}

class ProgressButton extends StatelessWidget {
  final VoidCallback onNext;
  const ProgressButton({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 75,
      child: Stack(children: [
        AnimatedIndicator(
          duration: const Duration(seconds: 10),
          size: 75,
          callback: onNext,
        ),
        Center(
          child: GestureDetector(
            child: Container(
              height: 60,
              width: 60,
              child: Center(
                child: SvgPicture.asset(
                  "assets/images/arrow.svg",
                  width: 10,
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99), color: kActiveColor),
            ),
            onTap: onNext,
          ),
        )
      ]),
    );
  }
}
