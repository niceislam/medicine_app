import 'package:flutter/material.dart';

class AnotherApp extends StatefulWidget {
  const AnotherApp({super.key});

  @override
  State<AnotherApp> createState() => _AnotherAppState();
}

class _AnotherAppState extends State<AnotherApp> {
  int RadioButton = 0;
  int RadioButton1 = 0;
  int RadioButton2 = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Are you ?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            RadioListTile(
              title: Text("Bangladeshi",),
              tileColor: RadioButton == 1 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 1,
              groupValue: RadioButton,
              onChanged: (value) {
                RadioButton = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text("korean",),
              tileColor: RadioButton == 2 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 2,
              groupValue: RadioButton,
              onChanged: (value) {
                RadioButton = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text("indian",),
              tileColor: RadioButton == 3 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 3,
              groupValue: RadioButton,
              onChanged: (value) {
                RadioButton = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text("japanese",),
              tileColor: RadioButton == 4 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 4,
              groupValue: RadioButton,
              onChanged: (value) {
                RadioButton = value!;
                setState(() {});
              },
            ),
            SizedBox(height: 15,),
            Text(
              "How old are you ?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            RadioListTile(
              title: Text("18+",),
              tileColor: RadioButton1 == 1 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 1,
              groupValue: RadioButton1,
              onChanged: (value) {
                RadioButton1 = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text("10+",),
              tileColor: RadioButton1 == 2 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 2,
              groupValue: RadioButton1,
              onChanged: (value) {
                RadioButton1 = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text("40+",),
              tileColor: RadioButton1 == 3 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 3,
              groupValue: RadioButton1,
              onChanged: (value) {
                RadioButton1 = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text("child",),
              tileColor: RadioButton1 == 4 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 4,
              groupValue: RadioButton1,
              onChanged: (value) {
                RadioButton1 = value!;
                setState(() {});
              },
            ),
            SizedBox(height: 15,),
            Text(
              "What is your profession ?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            RadioListTile(
              title: Text("Govt. Employer",),
              tileColor: RadioButton2 == 1 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 1,
              groupValue: RadioButton2,
              onChanged: (value) {
                RadioButton2 = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text("Farmer",),
              tileColor: RadioButton2 == 2 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 2,
              groupValue: RadioButton2,
              onChanged: (value) {
                RadioButton2 = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text("Driver",),
              tileColor: RadioButton2 == 3 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 3,
              groupValue: RadioButton2,
              onChanged: (value) {
                RadioButton2 = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text("None of the above",),
              tileColor: RadioButton2 == 4 ? Colors.yellow : Colors.white,
              activeColor: Colors.blue,
              value: 4,
              groupValue: RadioButton2,
              onChanged: (value) {
                RadioButton2 = value!;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
