// ignore_for_file: prefer_const_constructors
import 'package:fashion_valley/Core/Providers/catagories_selection_provider.dart';
import 'package:fashion_valley/UI/Screens/Cart/cart.dart';
import 'package:fashion_valley/UI/Screens/Home/Products/bags.dart';
import 'package:fashion_valley/UI/Screens/Home/Products/cloths.dart';
import 'package:fashion_valley/UI/Screens/Home/Products/electonics.dart';
import 'package:fashion_valley/UI/Screens/Home/Products/jewellery.dart';
import 'package:fashion_valley/UI/Screens/Home/Products/new_arrival.dart';
import 'package:fashion_valley/UI/Screens/Home/Products/shoes.dart';
import 'package:fashion_valley/UI/Screens/Home/home.dart';
import 'package:fashion_valley/UI/Screens/Notification/notific.dart';
import 'package:fashion_valley/UI/Screens/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabbarMainScreen extends StatefulWidget {
  const TabbarMainScreen({Key? key}) : super(key: key);

  @override
  State<TabbarMainScreen> createState() => _TabbarMainScreenState();
}

class _TabbarMainScreenState extends State<TabbarMainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Consumer<CatagorySelectionProvider>(
          builder: (context, catagselectprovider, child) => TabBarView(
            children: [
              catagselectprovider.index == 1
                  ? const NewArrival()
                  : catagselectprovider.index == 2
                      ? Cloths()
                      : catagselectprovider.index == 3
                          ? Bags()
                          : catagselectprovider.index == 4
                              ? Shoes()
                              : catagselectprovider.index == 5
                                  ? Electronics()
                                  : catagselectprovider.index == 6
                                      ? Jewellery()
                                      : Home(),
              const Cart(),
              const Notific(),
              const Profile(),
            ],
          ),
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width / 1,
          height: MediaQuery.of(context).size.height / 10,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            border: Border.all(
              width: 1,
              color: Theme.of(context).backgroundColor.withOpacity(0.1),
            ),
          ),
          child: TabBar(
            indicatorColor: const Color.fromARGB(255, 255, 255, 255),
            tabs: [
              Tab(
                icon: CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 5,
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.home_filled, color: Colors.black),
                ),
              ),
              Tab(
                icon: CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 5,
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.shopping_cart_checkout_sharp,
                      color: Colors.black),
                ),
              ),
              Tab(
                icon: CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 5,
                    backgroundColor: Colors.white,
                    child:
                        const Icon(Icons.notifications, color: Colors.black)),
              ),
              Tab(
                icon: CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 5,
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.person, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
