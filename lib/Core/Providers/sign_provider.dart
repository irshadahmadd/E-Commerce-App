import 'package:fashion_valley/Core/enums/view_state.dart';
import 'package:fashion_valley/Core/utills/utills.dart';
import 'package:fashion_valley/UI/Screens/AuthScreens/enterance_screent.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class SigninProvider extends ChangeNotifier {
  bool showPassword = true;

  visibilityPasswod() {
    showPassword = !showPassword;

    notifyListeners();
  }

  createUser(String email, String passowrd) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: passowrd)
          .then((value) => () {
                ViewState.busy;
              })
          .onError((error, stackTrace) => () {
                error.toString();
              });
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }

  signinWithemailpassword(String comfirmEmail, String confirmPassord) async {
    try {
      await auth
          .signInWithEmailAndPassword(
              email: comfirmEmail, password: confirmPassord)
          .then(
            (value) => (context) {
              Utilities().toastMessage(
                value.user!.email.toString(),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EntranceScreen(),
                ),
              );
            },
          );
    } catch (e) {
      print(e);
    }
  }
}
