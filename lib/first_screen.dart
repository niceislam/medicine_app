import 'package:flutter/material.dart';

import 'AppBody.dart';
import 'bottom_bar.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
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
      body: AppBody(),
      bottomNavigationBar: AppBottomBar()
    );
  }
}
