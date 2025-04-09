import 'package:flutter/material.dart';

import 'airtel_money.dart';
import 'airtel_tv.dart';
import 'home_page.dart';
import 'more.dart';


class NavigationHomePage extends StatefulWidget {
  const NavigationHomePage({super.key});

  @override
  State<NavigationHomePage> createState() => _NavigationHomePageState();
}

class _NavigationHomePageState extends State<NavigationHomePage> {
  final List<Widget> _pages = [
    const HomePage(),
    const AirtelMoney(),
    const AirtelTv(),
    const More(),
  ];

  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:
      currentIndex != 2 ?
      NavigationBar(
        elevation: 0,
        indicatorColor: Colors.transparent,
        backgroundColor: Colors.white,
        height: screenHeight * 0.08,
        surfaceTintColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        onDestinationSelected: (index){
          setState(() {
            currentIndex = index;
          });
        },
        selectedIndex: currentIndex,
        destinations: const <NavigationDestination> [
          NavigationDestination(
            icon: Icon(Icons.home, color: Colors.grey,),
            label: 'Home',
            selectedIcon: Icon(Icons.home, color: Colors.red,),
          ),
          NavigationDestination(
            icon: Icon(Icons.account_balance_wallet, color: Colors.grey),
            label: 'Airtel Money',
            selectedIcon: Icon(Icons.account_balance_wallet, color: Colors.red),
          ),
          NavigationDestination(
            icon: Icon(Icons.live_tv, color: Colors.grey),
            label: 'Airtel Tv',
            selectedIcon: Icon(Icons.live_tv, color: Colors.red),
          ),
          NavigationDestination(
            icon: Icon(Icons.density_medium_sharp, color: Colors.grey),
            label: 'More',
            selectedIcon:Icon(Icons.density_medium_sharp, color: Colors.red) ,
          )

        ],

      ) :null,
      body:_pages[currentIndex],
    );
  }
}
