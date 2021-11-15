import 'package:agro_investment/Services/screen_sizes.dart';
import 'package:agro_investment/Views/Authentication/signup_page.dart';
import 'package:agro_investment/Views/Shared/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(
                  'images/agric.png',
                ),
              ),
              SizedBox(
                child: Text('Farm Invest',
                    style: GoogleFonts.pacifico(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              verticalLargeSpacing,
              GestureDetector(
                onTap: () {
                  Get.to(const SignUpPage());
                },
                child: customContainer(
                  text: 'Create account',
                  width: 200,
                  boxColor: kActiveColor,
                  textColor: Colors.white,
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //     Get.to(const SignUpPage());
              //   },
              //   child: const Text.rich(
              //     TextSpan(
              //       text: "Create an account",
              //       style: TextStyle(
              //         color: kActiveColor,
              //         fontWeight: FontWeight.w600,
              //         decoration: TextDecoration.underline,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
  // BoxButton(
  //                       onTap: () {
  //                         if (_formKey.currentState.validate()) {
  //                           print("Email:${_emailController.text}");
  //                           print("Passowrd:${_passwordController.text}");
  //                         }
  //                         _formKey.currentState.save();
  //                         setState(() {
  //                           isLoading = true;
  //                         });
  //                         Navigator.of(context).pushNamed(HomeView.routeName);
  //                       },
  //                       title:
  //                           _authMode == AuthMode.Login ? 'Login' : 'Sign up',
  //                     ),
  //                   verticalMediumSpacing,
  //                   TextTerms(
  //                     text: "Don't have an account?",
  //                     textColor: Colors.grey,
  //                     navText:
  //                         _authMode == AuthMode.Login ? 'Sign up' : 'Log in',
  //                     navtextColor: Colors.white,
  //                     onTap: _switchAuthMode,