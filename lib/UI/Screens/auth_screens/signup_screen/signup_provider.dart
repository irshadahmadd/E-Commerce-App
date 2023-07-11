import 'dart:io';
import 'package:fashion_valley/UI/Screens/auth_screens/signin_screen/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/enums/view_state.dart';
import '../../../../core/models/app_user.dart';
import '../../../../core/models/base_view_model.dart';
import '../../../../core/services/auth_Services.dart';
import '../../../../core/services/custom_auth_result.dart';
import '../../../../core/services/database_storage_services.dart';
import '../../../custom_widgets/custom_snacke_bar.dart';

class SignUpProvider extends BaseViewModal {
  final _authServices = AuthServices();
  final locateUser = AuthServices();
  CustomAuthResult customAuthResult = CustomAuthResult();
  final formKey = GlobalKey<FormState>();
  AppUser appUser = AppUser();
  bool isVisiblePassword = true;

  XFile? image;
  File? userImage;
  String? imageUrl;

  final ImagePicker imagePicker = ImagePicker();
  DatabaseStorageServices databaseStorageServices = DatabaseStorageServices();

  SignUpProvider();

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
  /// Sign Up user  =======================================>>>
  ///
  signUpUser(AppUser appUser, BuildContext context) async {
    print("User Name: ${appUser.userName}");
    print("User Email: ${appUser.userEmail}");
    print("User Password: ${appUser.password}");
    print("User confirm Password: ${appUser.confirmPassword}");
    appUser.isFirstLogin = true;
    setState(ViewState.busy);

    ///
    /// generate token ===================================>>>
    ///
    customAuthResult = await _authServices.signUpUser(appUser);
    setState(ViewState.idle);
    if (customAuthResult.user != null) {
      print("SignUpUserId=> ${_authServices.appUser.appUserId}");
      Get.off(() => const SignInScreen());
    } else {
      showSnackBar(context, customAuthResult.errorMessage!);
    }
  }

  ///
  ///  upload Image To Storage =======================================>>>
  ///

  uploadImageToStorage(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      setState(ViewState.busy);

      if (userImage != null) {
        appUser.profileImage =
            await databaseStorageServices.uploadUserProfileImage(
                userImage!, locateUser.appUser.appUserId.toString());
      }

      // ignore: use_build_context_synchronously
      await signUpUser(appUser, context);

      setState(ViewState.idle);
    }
  }

  ///
  ///  Image Packer =============================================>>>
  ///

  pickImageFromGallery() async {
    image = await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      userImage = File(image!.path);
      print("UserImagePath=>${userImage!.path}");
      notifyListeners();
    }
  }
}
