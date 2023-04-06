//This is the file for Signup page. 







import 'package:doorbeen_init_exp/screens/Login%20and%20Signup/loginpage1.dart';
import 'package:doorbeen_init_exp/screens/Login%20and%20Signup/loginpage2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_elevatedButton.dart';
import '../../widgets/custom_textformfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // Text Editing Controllers

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  // bool value for Checkbox used in Terms and conditions 
  bool _isChecked = false;
  
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 65.0, left: 30.0, right: 30.0, bottom: 50.0),
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
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Name",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CustomTextFormField(
                      controller: nameController,
                      hinttext: 'Enter your Full Name ',
                      errortext: 'Invalid Input',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email ID's",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      hinttext: 'Enter your Email Address ',
                      errortext: 'Invalid Input',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Date of Birth",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                  const   DateSelector(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Location",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CountrydropdownButton(countryController: countryController),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Gender",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CustomGenderRadioTextField(
                      controller: genderController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select your gender';
                        }
                        return null;
                      },
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
                      height: 2.0,
                    ),
                    CustomPasswordField(
                      controller: passwordController,
                      hinttext: 'Enter Password ',
                      errortext: 'Invalid Input',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Confirm Password",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CustomPasswordField(
                      controller: repasswordController,
                      hinttext: 'Retype Password ',
                      errortext: 'Invalid Input',
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: Colors.black,
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        ),
                        const Text(
                          "I accept all the terrms and conditions",
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CustomElevatedButton(
                      text: "Sign up",
                      color: const Color(0xFF131515),
                      textcolor: Colors.white,
                      onpressed: () {},
                      width: screenSize.width,
                      height: 42.0,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "Have an account? ",
                        style: const TextStyle(
                            fontSize: 14.0, color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage2()),
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
