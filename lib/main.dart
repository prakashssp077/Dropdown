import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyHomePage> {
  final List<String> subjects = ["CSE","IT","Mech","EEE","ECE"];
  String selectedsubject = "CSE"; // initial selected value from subjects
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropDown Message"),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              DropdownButton<String>(
                value: selectedsubject,
                onChanged: (value){
                  setState(() {
                    selectedsubject = value;
                  });
                },
                items: subjects.map<DropdownMenuItem<String>>((value){
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
              ),
            SizedBox(
              height: 20,
            ),
            Text(selectedsubject, style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),)

          ],
        ),
      ),
    );
  }
}
