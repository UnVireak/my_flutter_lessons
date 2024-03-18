
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  // const DetailScreen({super.key});

  String image = "";

  DetailScreen(this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Detail Screen"),
        backgroundColor: Colors.grey[700],
      ),
      body: Image.network(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
