import 'package:fashion_valley/Core/Providers/catagories_selection_provider.dart';
import 'package:fashion_valley/UI/Custom_widgets/categories.dart';
import 'package:fashion_valley/UI/Screens/AuthScreens/enterance_screent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bags extends StatelessWidget {
  const Bags({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CatagorySelectionProvider>(
      builder: (context, catagprovider, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              InkWell(
                onTap: (() {
                  catagprovider.showBags(0);
                }),
                child: const CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              const Text(
                "Bags",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
