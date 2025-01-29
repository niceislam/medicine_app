import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  List<String> nameList = ["nice", "jeni", "nafiz", "shahariya"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      DropdownButton(
        hint: Text("name"),
        items:
          [DropdownMenuItem(child: nameList.map(toElement))],

          onChanged: (value){

          }, ),
    );
  }
}
