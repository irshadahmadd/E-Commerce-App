// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscure;
  final String? errorText;
  final String? hintText;
  final bool? enabled;
  final Color? errorColor;
  final Widget? suffixIcon;
  final validator;
  final double? fontSize;
  final String? label;
  final TextInputType? inputType;
  final onSaved;
  final ontap;
  final bool disableBorder;
  final Widget? prefixIcon;
  final int? maxline;
  final Color? fillColor;
  final bool? isElevated;
  final onChange;
  final contentPadding;
  const CustomTextField(
      {Key? key,
      this.controller,
      this.prefixIcon,
      this.maxline = 1,
      this.ontap,
      this.contentPadding,
      this.errorColor = Colors.black,
      this.disableBorder = false,
      this.label,
      this.inputType = TextInputType.text,
      this.obscure = false,
      this.enabled = true,
      this.validator,
      this.errorText,
      this.fontSize = 15.0,
      this.hintText,
      this.onSaved,
      this.fillColor = Colors.white,
      this.suffixIcon,
      this.onChange,
      this.isElevated = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            // padding: EdgeInsets.all(20),
            height: 45,
            decoration: BoxDecoration(
                color: fillColor,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  isElevated!
                      ? BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius:
                              2, // has the effect of softening the shadow
                          spreadRadius:
                              0.6, // has the effect of extending the shadow
                          offset: const Offset(
                            0, // horizontal, move right 10
                            0.4, // vertical, move down 10
                          ),
                        )
                      : const BoxShadow(color: Colors.transparent),
                ])),
        TextFormField(
          onChanged: onChange,
          maxLines: maxline,
          onTap: ontap,
          onSaved: onSaved,
          enabled: enabled,
          style: TextStyle(fontSize: fontSize),
          cursorColor: Colors.black,
          controller: controller,
          obscureText: obscure!,
          validator: validator,
          keyboardType: inputType,
          decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 18.0),
                child: prefixIcon,
              ),
              prefixIconConstraints: BoxConstraints(
                  maxHeight: prefixIcon != null ? 40 : 14,
                  maxWidth: prefixIcon != null ? 50 : 15),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              errorBorder: InputBorder.none,
              isDense: true,
              errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
              // alignLabelWithHint: true,
              suffixIcon:
                  // Padding(
                  // padding: const EdgeInsets.all(),
                  // child:
                  suffixIcon,
              // ?? SizedBox()),
              suffixIconConstraints:
                  const BoxConstraints(maxHeight: 40, maxWidth: 50),
              contentPadding: contentPadding ??
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
              // EdgeInsets.only(left: 21.0, top: 10),
              hintText: hintText,

              // errorStyle: TextStyle(fontSize: 8, height: 1),
              hintStyle: TextStyle(color: Colors.black, fontSize: fontSize)),
        ),
      ],
    );
  }
}
