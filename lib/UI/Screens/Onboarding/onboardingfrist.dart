import 'package:flutter/material.dart';

class OnboardOnde extends StatelessWidget {
  const OnboardOnde({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height / 1,
        width: MediaQuery.of(context).size.width / 1,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          image: const DecorationImage(
            image: AssetImage(
              "assets/model1.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            const Image(
              image: AssetImage(
                "assets/fashinn.png",
              ),
              color: Colors.white,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 17,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              child: const Center(
                  child: Text(
                "Sign in",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 17,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              child: const Center(
                  child: Text(
                "Sign up",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              )),
            )
          ],
        )),
      ),
    );
  }
}
