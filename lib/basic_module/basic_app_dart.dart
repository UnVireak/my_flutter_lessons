// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cc/basic_module/layout_screen.dart';
import 'package:cc/basic_module/netflix.dart';

class BasicApp extends StatelessWidget {
  // const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: NetflixLayoutScreen(),
    );
  }
}