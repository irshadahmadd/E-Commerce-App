import 'package:fashion_valley/UI/Screens/auth_screens/enterance_screent.dart';
import 'package:fashion_valley/UI/Screens/auth_screens/signin_screen/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/enums/view_state.dart';
import '../../../../core/models/app_user.dart';
import '../../../../core/models/base_view_model.dart';
import '../../../../core/services/auth_Services.dart';
import '../../../../core/services/custom_auth_result.dart';
import '../../../../core/services/database_services.dart';
import '../../../custom_widgets/custom_snacke_bar.dart';

class SignInProvider extends BaseViewModal {
  final _authService = AuthServices();
  AppUser appUser = AppUser();
  final databaseServices = DatabaseServices();
  CustomAuthResult customAuthResult = CustomAuthResult();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isVisiblePassword = true;

  ///
  /// Visible Password =================================>>>
  ///
  visiblePassword() {
    print("Password state : $isVisiblePassword");
    isVisiblePassword = !isVisiblePassword;
    notifyListeners();
    print("Password final state : $isVisiblePassword");
  }

  ///
  /// Login user ============================================>>>
  ///
  loginToApp(AppUser appUser, BuildContext context) async {
    if (formKey.currentState!.validate()) {
      print("App user email: ${appUser.userEmail}");
      print("App user Password: ${appUser.password}");
      setState(ViewState.busy);

      customAuthResult = await _authService.loginUser(appUser);

      setState(ViewState.idle);

      if (customAuthResult.user != null) {
        print("App user Id: ${_authService.appUser.appUserId}");
        print("this is where i am searching===");

        if (_authService.appUser.isFirstLogin == true) {
          Get.off(() => EntranceScreen());
        } else if (_authService.appUser.isFirstLogin == false) {
          Get.off(() => SignInScreen());
        }
      } else {
        showSnackBar(
          context,
          "${customAuthResult.errorMessage!}",
          duration: 5000,
        );
      }
    }
  }
}
