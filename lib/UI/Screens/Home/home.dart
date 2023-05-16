import 'package:fashion_valley/Core/Providers/catagories_selection_provider.dart';
import 'package:fashion_valley/UI/Custom_widgets/categories.dart';
import 'package:fashion_valley/UI/Screens/AuthScreens/enterance_screent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CatagorySelectionProvider>(
      builder: (context, catagprovider, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 30),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EntranceScreen(),
                        ),
                      );
                    }),
                    child: const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 1.5),
                child: const Text(
                  "Catagories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Catagories(
                iccon: const Icon(
                  Icons.shopping_cart_checkout_sharp,
                  color: Colors.white,
                ),
                title: "New Arrival",
                product: "250 Products",
                ontap: () {
                  catagprovider.showNewArrival(1);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Catagories(
                iccon: const Icon(
                  Icons.wallet_giftcard_outlined,
                  color: Colors.white,
                ),
                title: "Cloths",
                product: "349 Products",
                ontap: () {
                  catagprovider.showCloths(2);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Catagories(
                iccon: const Icon(
                  Icons.shopping_bag_rounded,
                  color: Colors.white,
                ),
                title: "Bags",
                product: "938 Products",
                ontap: () {
                  catagprovider.showBags(3);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Catagories(
                iccon: const Icon(
                  Icons.sailing_rounded,
                  color: Colors.white,
                ),
                title: "Shoes",
                product: "234 Products",
                ontap: () {
                  catagprovider.showShoes(4);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Catagories(
                iccon: const Icon(
                  Icons.electric_bolt_outlined,
                  color: Colors.white,
                ),
                title: "Electronins",
                product: "567 Products",
                ontap: () {
                  catagprovider.showElectronics(5);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Catagories(
                iccon: const Icon(
                  Icons.ring_volume_sharp,
                  color: Colors.white,
                ),
                title: "Jewellery",
                product: "567 Products",
                ontap: () {
                  catagprovider.showJewellery(6);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
