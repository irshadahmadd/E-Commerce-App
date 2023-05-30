import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String text;

  CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
