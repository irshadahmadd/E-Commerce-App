import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color buttonCollor;
  const Button({super.key, required this.title, required this.buttonCollor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
          color: buttonCollor, borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
