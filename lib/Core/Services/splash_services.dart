import 'dart:async';

import 'package:fashion_valley/Core/Services/splash_sceeen_secon.dart';
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
    Timer(const Duration(seconds: 2), (() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const SplashScreenSecond()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          image: const DecorationImage(
              image: AssetImage("assets/model1.png"), fit: BoxFit.cover)),
      height: MediaQuery.of(context).size.height / 1,
      width: MediaQuery.of(context).size.width / 1,
      child: const Center(child: Text("Splash Screen")),
    );
  }
}
