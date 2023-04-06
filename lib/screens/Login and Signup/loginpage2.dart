import 'package:doorbeen_init_exp/screens/Login%20and%20Signup/signuppage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../bottomnavbar.dart';
import '../../widgets/custom_elevatedButton.dart';
import '../../widgets/custom_textformfield.dart';
import '../../widgets/or_with_line.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 85.0, left: 30.0, right: 30.0, bottom: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/Logo.png"),
              const SizedBox(
                height: 30.0,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Login Now !",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Please enter the details below to continue.",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email Address",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 1.0,
                    ),
                    CustomTextFormField(
                      controller: emailController,
                      hinttext: 'Enter your phone, email',
                      errortext: 'Invalid Input',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 1.0,
                    ),
                    CustomPasswordField(
                      controller: passwordController,
                      hinttext: 'Enter your password',
                      errortext: 'Invalid Input',
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password ?",
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      text: "Login",
                      color: const Color(0xFF131515),
                      textcolor: Colors.white,
                      onpressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomBottomNavBar()),
                        );
                      },
                      width: screenSize.width,
                      height: 42.0,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  const GradientLineWithGap(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    CustomElevatedButton(
                      text: "Login with Google",
                      icon: "assets/google.png",
                      color: Colors.white,
                      textcolor: Colors.grey,
                      onpressed: () {},
                      width: screenSize.width,
                      height: 42.0,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    CustomElevatedButton(
                      text: "Login with Facebook",
                      icon: "assets/facebook.png",
                      color: Colors.white,
                      textcolor: Colors.grey,
                      onpressed: () {},
                      width: screenSize.width,
                      height: 42.0,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "Don't have an account? ",
                        style: const TextStyle(
                            fontSize: 14.0, color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Signup',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()),
                        );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
