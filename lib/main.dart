import 'package:fashion_valley/Core/Providers/sign_provider.dart';
import 'package:fashion_valley/Core/Services/splash_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SigninProvider>(
          create: (_) => SigninProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fashion Valley',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreenFrist(),
      ),
    );
  }
}
