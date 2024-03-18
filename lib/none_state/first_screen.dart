import 'package:flutter/material.dart';

import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  // const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (x) => SecondScreen(_count),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter: $_count",
              style: TextStyle(fontSize: 30),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _count--;
                });
              },
              icon: Icon(Icons.remove),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
