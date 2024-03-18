import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> fileList = ["2.jpg", "1.png", "5.jpeg", "4.png", "3.png"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image ListView'),
        ),
        body: ListView.builder(
          itemCount: fileList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Image.asset(
                fileList[index], // Assuming the images are in the assets folder
                width: 100,
                height: 100,
              ),
            );
          },
        ),
      ),
    );
  }
}
