import 'package:flutter/material.dart';

class FloatingAction extends StatefulWidget {
  const FloatingAction({super.key});

  @override
  State<FloatingAction> createState() => _FloatingActionState();
}

class _FloatingActionState extends State<FloatingAction> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("$counter"),
        ),
        FloatingActionButton(onPressed: (){
          counter++;
          setState(() {});

        },
          child: Icon(Icons.add),)
      ],
    );
  }
}
