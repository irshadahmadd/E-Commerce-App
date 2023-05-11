import 'dart:async';

import 'package:fashion_valley/UI/Screens/Onboarding/onboardingfour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class OnboardingThree extends StatefulWidget {
  const OnboardingThree({super.key});

  @override
  State<OnboardingThree> createState() => _OnboardingThreeState();
}

class _OnboardingThreeState extends State<OnboardingThree> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      (() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingFour(),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 1.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/model4.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width / 3.5),
            child: const Text(
              "20% Discount\nNew Arrival Products",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width / 5),
            child: const Text(
              "Publish up your selfies to make yourself\nmore beautifull with this app",
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SpinKitThreeBounce(
                  color: Colors.black,
                  duration: Duration(seconds: 3),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 0, 0, 15),
                  child: Center(
                      child: Image(
                    image: AssetImage("assets/arrow.png"),
                    color: Colors.white,
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
