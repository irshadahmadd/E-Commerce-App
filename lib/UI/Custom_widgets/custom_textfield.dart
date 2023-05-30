// ignore_for_file: prefer_typing_uninitialized_variables, duplicate_ignore

import 'package:fashion_valley/Core/Constants/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable, duplicate_ignore
class CustomTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final onChanged;
  final validator;
  final hintText;
  final controller;
  final preFixIcon;
  bool obscureText;
  final textInputAction;
  final keyBoardType;
  IconButton? suffixIcon;
  FocusNode? focusNode;
  Function(String)? onFieldSubmitted;

  CustomTextField({
    super.key,
    this.preFixIcon,
    this.suffixIcon,
    this.onChanged,
    this.controller,
    this.hintText,
    this.validator,
    this.obscureText = false,
    this.textInputAction,
    this.keyBoardType,
    this.focusNode,
    this.onFieldSubmitted,
    EdgeInsets? contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        onChanged: onChanged,
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(fontSize: 16),
        onFieldSubmitted: onFieldSubmitted,
        focusNode: focusNode,
        obscuringCharacter: "*",
        cursorColor: primaryColor,
        decoration: InputDecoration(
          // border: InputBorder.none,
          filled: true,
          hintText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintStyle: const TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          prefix: preFixIcon,
          suffixIcon: suffixIcon,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
