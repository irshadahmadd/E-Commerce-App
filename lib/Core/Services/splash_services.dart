import 'dart:async';
import 'package:fashion_valley/UI/Screens/Onboarding/onboardingtwo.dart';
import 'package:flutter/material.dart';

class SplashScreenFrist extends StatefulWidget {
  const SplashScreenFrist({super.key});

  @override
  State<SplashScreenFrist> createState() => _SplashScreenFristState();
}

class _SplashScreenFristState extends State<SplashScreenFrist> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      (() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingTwo(),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1,
      width: MediaQuery.of(context).size.width / 1,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.9),
        image: const DecorationImage(
          image: AssetImage(
            "assets/model1.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
          ),
          const Center(
            child: Image(
              image: AssetImage(
                "assets/fashinn.png",
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
