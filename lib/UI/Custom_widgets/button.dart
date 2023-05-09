import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget iccon;
  final String title;
  final Color buttonCollor;
  final Color titleColor;
  final VoidCallback ontap;
  const Button({
    super.key,
    required this.iccon,
    required this.title,
    required this.buttonCollor,
    required this.titleColor,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: MediaQuery.of(context).size.height / 18,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
            color: buttonCollor, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iccon,
              Text(
                title,
                style: TextStyle(
                  color: titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
