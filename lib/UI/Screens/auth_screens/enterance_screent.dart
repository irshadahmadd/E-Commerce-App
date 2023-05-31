import 'package:fashion_valley/UI/Custom_widgets/button.dart';
import 'package:fashion_valley/UI/Screens/TabbarMain/main_tabbar_screen.dart';
import 'package:flutter/material.dart';

class EntranceScreen extends StatelessWidget {
  const EntranceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 1,
        width: MediaQuery.of(context).size.width / 1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
              const Image(
                image: AssetImage("assets/correct.png"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              const Text(
                "Successfull",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              const Text(
                "Welcome you have successfully \n register now you can\n contineue to",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              Button(
                  iccon: const Icon(
                    Icons.ac_unit,
                    color: Colors.transparent,
                    size: 0,
                  ),
                  title: "Start Shopping",
                  buttonCollor: Colors.black,
                  titleColor: Colors.white,
                  ontap: () {
                    Navigator.push(
                      context,
                      (MaterialPageRoute(
                        builder: (context) => const TabbarMainScreen(),
                      )),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
