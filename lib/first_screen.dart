import 'package:flutter/material.dart';
import 'AppBody.dart';
import 'Dropdown.dart';
import 'another_body.dart';
import 'floating_action.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int index = 0;
  List<Widget> ScreenList = [
    AnotherApp(),
    AppBody(),
    FloatingAction(),
    Dropdown(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Text(
            "Store",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.file_upload_outlined,
            color: Colors.black,
            size: 29,
          )
        ],
      ),
      body: ScreenList[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          index = value;
          setState(() {});
        },
        selectedLabelStyle: TextStyle(color: Colors.black),
        currentIndex: index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              label: "Home page",
              icon: Icon(
                Icons.home_outlined,
              )),
          BottomNavigationBarItem(
              label: "Store",
              icon: Icon(
                Icons.storefront,
              )),
          BottomNavigationBarItem(
              label: "Tracker",
              icon: Icon(
                Icons.sync,
              )),
          BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(
                Icons.person_outline,
              )),
        ],
      ),
    );
  }
}
