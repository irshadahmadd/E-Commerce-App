import 'package:fashion_valley/Core/Constants/decoration.dart';
import 'package:fashion_valley/Core/Providers/sign_provider.dart';
import 'package:fashion_valley/Core/utills/utills.dart';
import 'package:fashion_valley/UI/Custom_widgets/button.dart';
import 'package:fashion_valley/UI/Screens/AuthScreens/enterance_screent.dart';
import 'package:fashion_valley/UI/Screens/AuthScreens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
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
                Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Email';
                            }
                            return null;
                          },
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
                    ],
                  ),
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter password';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Button(
                  ontap: (() async {
                    if (formkey.currentState!.validate()) {
                      await auth
                          .signInWithEmailAndPassword(
                              email: emailContoller.text.trim(),
                              password: passwordContoller.text.trim())
                          .then(
                            (value) => {
                              Utilities().toastMessage(
                                value.user!.email.toString(),
                              ),
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EntranceScreen(),
                                ),
                              ),
                            },
                          )
                          .onError(
                            (error, stackTrace) => {
                              Utilities().toastMessage(
                                error.toString(),
                              ),
                            },
                          );

                      // ignore: use_build_context_synchronously

                    } else {}
                  }),
                  title: "Login",
                  titleColor: Colors.white,
                  buttonCollor: Colors.black,
                  iccon: const Icon(
                    Icons.face_outlined,
                    size: 0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                const Center(
                  child: Text(
                    "or ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Button(
                  ontap: (() {}),
                  title: "Contineue with google",
                  titleColor: Colors.white,
                  buttonCollor: const Color.fromARGB(255, 58, 52, 52),
                  iccon: const Icon(
                    Icons.g_mobiledata,
                    size: 0,
                    color: Color.fromARGB(255, 255, 255, 255),
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
