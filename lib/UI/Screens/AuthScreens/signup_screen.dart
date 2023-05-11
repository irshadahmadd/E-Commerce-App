import 'package:fashion_valley/Core/Constants/decoration.dart';
import 'package:fashion_valley/Core/Providers/sign_provider.dart';
import 'package:fashion_valley/UI/Custom_widgets/button.dart';
import 'package:fashion_valley/UI/Screens/AuthScreens/enterance_screent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<SigninProvider>(
      builder: (context, signinprovider, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width / 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Image(
                  image: AssetImage(
                    "assets/fashinn.png",
                  ),
                  color: Colors.black,
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                const Text(
                  "Create a new account to sign up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                const Text(
                  "Username",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 10,
                  child: TextFormField(
                    controller: emailContoller,
                    decoration: kTextfieldDecoration.copyWith(
                      hintText: "Enter username",
                      suffixIcon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Email",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 10,
                  child: TextFormField(
                    controller: emailContoller,
                    decoration: kTextfieldDecoration.copyWith(
                      hintText: "Enter your email",
                      suffixIcon: const Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 10,
                  child: TextFormField(
                    obscureText: signinprovider.showPassword,
                    controller: passwordContoller,
                    decoration: kTextfieldDecoration.copyWith(
                      hintText: "Enter your password",
                      suffixIcon: InkWell(
                        onTap: () {
                          signinprovider.visibilityPasswod();
                        },
                        child: Icon(
                            signinprovider.showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Button(
                  ontap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EntranceScreen()));
                  }),
                  title: "Sign Up",
                  titleColor: Colors.white,
                  buttonCollor: Colors.black,
                  iccon: const Icon(
                    Icons.face_outlined,
                    size: 0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
