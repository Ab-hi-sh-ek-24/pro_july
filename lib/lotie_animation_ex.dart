import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp( MaterialApp(home: LottieEx(),
  ));
}
class LottieEx extends StatelessWidget {
  const LottieEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Lottie.asset("assets/animation/animation.json"),
        //Lottie.network("https://lottie.host/d6b87273-cd17-4e4f-b2cd-d4ebe086d33a/DI4d8ETBhG.json")
      ),
    );
  }
}
