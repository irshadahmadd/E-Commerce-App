import 'package:fashion_valley/Core/Providers/catagories_selection_provider.dart';
import 'package:fashion_valley/Core/Services/splash_services.dart';
import 'package:fashion_valley/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'UI/Screens/auth_screens/signin_screen/signin_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // GetIt.instance.registerSingleton<AuthServices>(AuthServices());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SignInProvider>(create: (_) => SignInProvider()),
        ChangeNotifierProvider<CatagorySelectionProvider>(
            create: (_) => CatagorySelectionProvider()),
      ],
      child: GetMaterialApp(
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
