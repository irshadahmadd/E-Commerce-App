import 'package:fashion_valley/UI/Screens/Cart/cart.dart';
import 'package:fashion_valley/UI/Screens/Home/home.dart';
import 'package:fashion_valley/UI/Screens/Notification/notific.dart';
import 'package:fashion_valley/UI/Screens/Profile/profile.dart';
import 'package:flutter/material.dart';

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
          body: const TabBarView(
            children: [
              Home(),
              Cart(),
              Notific(),
              Profile(),
            ],
          ),
          extendBody: true,
          bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 10,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                border: Border.all(
                    width: 1,
                    color: Theme.of(context).backgroundColor.withOpacity(0.1))),
            child: TabBar(
              indicatorColor: const Color.fromARGB(255, 255, 255, 255),
              tabs: [
                Tab(
                  icon: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 5,
                      backgroundColor: Colors.white,
                      child:
                          const Icon(Icons.home_filled, color: Colors.black)),
                ),
                Tab(
                  icon: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 5,
                      backgroundColor: Colors.white,
                      child: const Icon(Icons.shopping_cart_checkout_sharp,
                          color: Colors.black)),
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
                      child: const Icon(Icons.person, color: Colors.black)),
                ),
              ],
            ),
          ),
        ));
  }
}
