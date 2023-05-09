import 'package:flutter/cupertino.dart';

class SigninProvider extends ChangeNotifier {
  bool showPassword = true;

  visibilityPasswod() {
    showPassword = !showPassword;

    notifyListeners();
  }
}
