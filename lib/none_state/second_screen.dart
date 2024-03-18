import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  int count = 0;

  SecondScreen(this.count);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  widget.count--;
                });
              },
              icon: Icon(Icons.remove),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  widget.count++;
                });
              },
              icon: Icon(Icons.add),
            ),
        ],
      ),
      body: Center(
        child: Text(
          "Counter: ${widget.count}",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
