import 'package:agro_investment/Views/Authentication/signup_page.dart';
import 'package:agro_investment/Views/Shared/button.dart';
import 'package:agro_investment/Views/Shared/custom_widget.dart';
import 'package:agro_investment/Views/Shared/input_box.dart';
import 'package:agro_investment/Views/Shared/validator.dart';
import 'package:agro_investment/Views/main/home.dart';
import 'package:agro_investment/Views/main/nav_control.dart';
import 'package:agro_investment/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool pinObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    "Sign in to Green",
                    textAlign: TextAlign.start,
                    style: headerStyle(),
                  ),
                  Text(
                    "land",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: kActiveColor, fontFamily: "Alata", fontSize: 24),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inputFieldTitle("Email"),
                      InputFormField(
                        hint: 'Enter your email',
                        controller: emailController,
                        // keyboardType: TextInputType.emailAddress,
                        //validator: (value) =>
                        //   EmailValidator.validateEmail(value),
                      ),
                      inputFieldTitle("Password"),
                      InputFormField(
                          hint: 'Enter your password',
                          controller: passwordController,
                          obscure: pinObscure,
                          maxLines: 1,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                pinObscure = !pinObscure;
                              });
                            },
                            icon: Icon(pinObscure
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                          ),
                          validator: (value) =>
                              PasswordValidator.validatePassword(value)),
                      SizedBox(
                        height: screenHeight(context) * 0.2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: defaultButton(
                            text: 'Sign in',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                Get.to(() => NavigationBar());
                              }
                            }),
                      ),
                      SizedBox(
                        height: screenHeight(context) * 0.15,
                      ),
                      haveAccountSwitch(
                          onTap: () => Get.to(() => SignUpPage()),
                          greyText: 'Don\t have an account?',
                          coloredText: " Sign up"),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
