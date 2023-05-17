import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  // ignore: prefer_typing_uninitialized_variables
  final onTap;
  final Color? buttonColor;
  final Color? textColor;

  const CustomButton(
      {Key? key, this.onTap, this.text, this.buttonColor, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(23)),
        child: Center(
          child: Text('$text',
              style: TextStyle(
                color: textColor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
