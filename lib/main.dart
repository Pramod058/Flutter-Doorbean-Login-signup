// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:doorbeen_init_exp/screens/try.dart';
import 'package:flutter/material.dart';
import 'bottomnavbar.dart';
import 'screens/Login and Signup/loginpage1.dart';
import 'screens/Login and Signup/loginpage2.dart';
import 'screens/Login and Signup/signuppage.dart';
import 'screens/Login and Signup/signuppage2.dart';
import 'widgets/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

// 1st screen shown in app


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => const LoginPage1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset("assets/Logo.png"),
      ),
    );
  }
}
