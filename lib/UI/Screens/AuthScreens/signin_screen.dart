import 'package:fashion_valley/Core/Constants/decoration.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController nameContoller = TextEditingController();
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 20),
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
                "Welcome",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              const Text(
                "Please login or sign up to contineue our app",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
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
                height: MediaQuery.of(context).size.height / 6,
                child: TextFormField(
                  controller: nameContoller,
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
                height: MediaQuery.of(context).size.height / 6,
                child: TextFormField(
                  obscureText: showPassword,
                  controller: nameContoller,
                  decoration: kTextfieldDecoration.copyWith(
                    hintText: "Enter your password",
                    suffixIcon: InkWell(
                      onTap: () {
                        showPassword = !showPassword;
                      },
                      child: Icon(
                          showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.red),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
