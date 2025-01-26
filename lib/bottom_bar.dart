import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            label: "Home page",
            icon: Icon(Icons.home_outlined,)),
        BottomNavigationBarItem(
            label: "Store",
            icon: Icon(Icons.storefront,)),
        BottomNavigationBarItem(
            label: "Tracker",
            icon: Icon(Icons.sync,)),
        BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person_outline,)),
      ],);;
  }
}

