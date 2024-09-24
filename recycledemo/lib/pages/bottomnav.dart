import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recycledemo/pages/profile.dart';
import 'package:recycledemo/pages/wallet.dart';

import 'home.dart';
import 'order.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = Home();
    order = Order();
    profile = Profile();
    wallet = Wallet();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.brown,
        animationDuration: Duration(milliseconds: 350),
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
          });
        },
          items: [
        Icon(
          Icons.home_outlined,
          color: Colors.green,
        ),
        Icon(
          Icons.newspaper,
          color: Colors.green,
        ),
        Icon(
          Icons.wallet_outlined,
          color: Colors.green,
        ),
        Icon(
          Icons.person_outline,
          color: Colors.green,
        )
      ]),
    body: pages[currentTabIndex],
    );
  }
}
