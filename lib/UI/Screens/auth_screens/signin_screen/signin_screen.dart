import 'package:fashion_valley/UI/Screens/auth_screens/signin_screen/signin_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';
import '../../../../core/enums/view_state.dart';
import '../../../custom_widgets/custom_button.dart';
import '../../../custom_widgets/custom_textfield.dart';
import '../signup_screen/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return SignInProvider();
      },
      child: Consumer<SignInProvider>(builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.white,

          ///
          ///   Body ===================>>>
          ///
          body: ModalProgressHUD(
            progressIndicator: const CircularProgressIndicator(
              color: Colors.white,
            ),
            inAsyncCall: model.state == ViewState.busy,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Text(
                          'Welcome Back',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                  ///  Container ==========================>>>
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 18,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 13),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(
                              0.0,
                              0.0,
                            ),
                            blurRadius: 10,
                            // spreadRadius: 1,
                          )
                        ],
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15),
                          bottom: Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        child: Form(
                          key: model.formKey,
                          //autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 18,
                              ),

                              /// Email TextField =================>>>
                              ///
                              CustomTextField(
                                hintText: 'Email',
                                textInputAction: TextInputAction.next,
                                keyBoardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  model.appUser.userEmail = value;
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your email";
                                  }
                                  if (!value.contains("@")) {
                                    return "Enter valid email";
                                  }
                                },
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 18,
                              ),

                              /// Password TextField ================>>>
                              ///
                              CustomTextField(
                                hintText: 'Password',
                                textInputAction: TextInputAction.next,
                                keyBoardType: TextInputType.visiblePassword,
                                obscureText: model.isVisiblePassword,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    model.visiblePassword();
                                  },
                                  icon: model.isVisiblePassword
                                      ? const Icon(
                                          Icons.visibility_off,
                                          color: Color(0xFF568C48),
                                        )
                                      : const Icon(
                                          Icons.visibility,
                                          color: Color(0xFF568C48),
                                        ),
                                ),
                                onChanged: (value) {
                                  model.appUser.password = value;
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your Password";
                                  }
                                  if (value.length < 6) {
                                    return "Password length must be 6 characters";
                                  }
                                },
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 18,
                              ),

                              ///
                              ///  Sign In Button ===============>>>
                              ///
                              InkWell(
                                onTap: () {
                                  model.loginToApp(model.appUser, context);
                                },
                                child: CustomButton(text: 'SIGN IN'),
                              ),

                              ///
                              ///  Sign Up Button ===============>>>
                              ///
                              ///
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen(),
                                    ),
                                  );
                                },
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Center(
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Create an account?',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: ' Sign Up',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
