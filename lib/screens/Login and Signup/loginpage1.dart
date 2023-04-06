// 2nd screen shown in app


import 'package:doorbeen_init_exp/screens/Login%20and%20Signup/loginpage2.dart';
import 'package:doorbeen_init_exp/screens/Login%20and%20Signup/signuppage.dart';
import 'package:doorbeen_init_exp/screens/Login%20and%20Signup/signuppage2.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_elevatedButton.dart';
import '../../widgets/or_with_line.dart';


class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Image.asset(
            "assets/bgimage.png",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: Container(
            height: screenSize.height / 2,
            width: screenSize.width,
            decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                )),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0, bottom: 50.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/Logo.png"),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomElevatedButton(
                      text: "Login",
                      color: const Color(0xFF131515),
                      textcolor: Colors.white,
                      onpressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage2()),
                        );
                      },
                      width: screenSize.width,
                      height: 42.0,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomElevatedButton(
                      text: "Signup",
                      color: Colors.white,
                      textcolor: Colors.black,
                      onpressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()),
                        );
                      },
                      width: screenSize.width,
                      height: 42.0,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const GradientLineWithGap(),
                    CustomElevatedButton(
                      text: "Login with Google",
                      icon: "assets/google.png",
                      color: Colors.white,
                      textcolor: Colors.grey,
                      onpressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage2()),
                        );
                      },
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
