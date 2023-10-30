import 'dart:async';

import 'package:flutter/material.dart';
import '2login_signup.dart';
import '3login.dart';
import '4signup.dart';
import '5home.dart';
import '6details.dart';
import '7explorenow.dart';
import '8payment.dart';

void main() {
  runApp(MaterialApp(
    home: IntroScreen(),
    routes: {
      'login': (context) => Tourism_Login(),
      'register': (context) => Tour_SignUp(),
      'home': (context) => Tour_Home(),
      'details': (context) => Tour_details(),
      'explore': (context) => Tour_Explore(),
      'payment': (context) => Tour_Payment(),
    },
  ));
}



class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Login_SigUp()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          "assets/image/tourism.png",
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}

