import 'dart:async';

import 'package:fashion_valley/UI/Screens/Onboarding/onboardingtwo.dart';
import 'package:flutter/material.dart';

class OnboardOnde extends StatefulWidget {
  const OnboardOnde({super.key});

  @override
  State<OnboardOnde> createState() => _OnboardOndeState();
}

class _OnboardOndeState extends State<OnboardOnde> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 7),
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
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height / 1,
        width: MediaQuery.of(context).size.width / 1,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          image: const DecorationImage(
            image: AssetImage(
              "assets/model1.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            const Image(
              image: AssetImage(
                "assets/fashinn.png",
              ),
              color: Colors.white,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnboardingTwo(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                child: const Center(
                    child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnboardingTwo(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                child: const Center(
                    child: Text(
                  "Sign up",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        )),
      ),
    );
  }
}
