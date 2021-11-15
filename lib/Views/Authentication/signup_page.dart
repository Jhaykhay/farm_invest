import 'package:agro_investment/Services/screen_sizes.dart';
import 'package:agro_investment/Views/Screens/home_view.dart';
import 'package:agro_investment/Views/Shared/custom_container.dart';
import 'package:agro_investment/Views/Shared/input_box.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

enum AuthMode {
  login,
  signUp,
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  bool isLoading = false;
  AuthMode _authMode = AuthMode.login;
  void _switchAuthMode() {
    if (_authMode == AuthMode.login) {
      setState(() {
        _authMode = AuthMode.signUp;
      });
    } else {
      setState(() {
        _authMode = AuthMode.login;
      });
    }
  }

  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset(
                      'images/agric.png',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 22),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        _authMode == AuthMode.login
                            ? 'Please login with your account'
                            : 'Account Sign up',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  verticalMediumSpacing,
                  if (_authMode == AuthMode.signUp)
                    buildInputBox(
                      title: 'FirstName',
                      controller: nameController,
                      keyboardType: TextInputType.name,
                    ),
                  verticalMediumSpacing,
                  if (_authMode == AuthMode.signUp)
                    buildInputBox(
                      title: 'LastName',
                      controller: nameController,
                      keyboardType: TextInputType.name,
                    ),
                  verticalMediumSpacing,
                  buildInputBox(
                    title: 'Email',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  verticalMediumSpacing,
                  buildInputBox(
                    title: 'Password',
                    controller: passwordController,
                    keyboardType: TextInputType.phone,
                    obscureText: true,
                  ),
                  verticalMediumSpacing,
                  if (_authMode == AuthMode.signUp)
                    buildInputBox(
                      title: 'Referral Code',
                      controller: codeController,
                      keyboardType: TextInputType.phone,
                    ),
                  verticalMediumSpacing,
                  if (_authMode == AuthMode.signUp)
                    buildInputBox(
                      title: 'Address',
                      controller: addressController,
                      keyboardType: TextInputType.name,
                      maxLines: 4,
                    ),
                  verticalMediumSpacing,
                  // GestureDetector(
                  //   onTap: () {
                  //     if (_formKey.currentState!.validate()) {}
                  //     Get.defaultDialog();
                  //   },
                  //   child: customContainer(
                  //     text: 'Create',
                  //     width: double.infinity,
                  //     boxColor: kActiveColor,
                  //     textColor: Colors.white,
                  //   ),
                  // ),
                  verticalMediumSpacing,
                  GestureDetector(
                    onTap: () {
                      Get.to(const HomeView());
                    },
                    child: customContainer(
                      text: 'home',
                      width: double.infinity,
                      boxColor: kActiveColor,
                      textColor: Colors.white,
                    ),
                  ),
                  verticalMediumSpacing,
                  GestureDetector(
                    onTap: _switchAuthMode,
                    child: customContainer(
                      text: 'Sign up',
                      width: double.infinity,
                      boxColor: kActiveColor,
                      textColor: Colors.white,
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     // showSearch(context: context, delegate: DataSearch());
                  //   },
                  //   child: customContainer(
                  //     text: 'Create',
                  //     width: double.infinity,
                  //     boxColor: kActiveColor,
                  //     textColor: Colors.white,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
