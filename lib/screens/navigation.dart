import 'dart:developer';

import 'package:airtel_app/screens/airtelmoney.dart';
import 'package:airtel_app/screens/home.dart';
import 'package:airtel_app/screens/more.dart';
import 'package:airtel_app/screens/services.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  _bottomNavigation() {

    return NavigationBar(
      height: 60,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      indicatorColor: Colors.transparent,
      onDestinationSelected: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      selectedIndex: currentIndex,
      // indicatorColor: Colors.amber,
      destinations: const [
        NavigationDestination(
          //    selectedIcon: Icon(Icons.home, color: Colors.red,),
          icon: Icon(Icons.home, color: Colors.grey,),
          label: 'Home',
          selectedIcon:Icon(Icons.home, color: Colors.red,),

        ),
        NavigationDestination(
          icon: Icon(Icons.account_balance_wallet, color:Colors.grey ,),
          label: 'Airtel Money',
          selectedIcon:Icon(Icons.account_balance_wallet, color:Colors.red ,) ,
        ),


        NavigationDestination(
          selectedIcon: Icon(Icons.menu, color: Colors.red,),
          icon: Icon(Icons.menu_outlined,color: Colors.grey,),
          label: 'More',

        ),
      ],
    );
  }

  final List <Widget>_pages = [
    const HomeScreen(),
    const AirtelMoney(),
    const AirtelServices()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: currentIndex !=3 ? _bottomNavigation():null,
      body: _pages[currentIndex],

    );
  }
}
