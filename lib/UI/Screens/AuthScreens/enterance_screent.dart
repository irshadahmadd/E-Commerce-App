import 'package:flutter/material.dart';

class EntranceScreen extends StatelessWidget {
  const EntranceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 1,
        width: MediaQuery.of(context).size.width / 1,
        child: Column(
          children: [Image(image: AssetImage("assets/"))],
        ),
      ),
    );
  }
}
