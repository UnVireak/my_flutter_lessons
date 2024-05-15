import 'package:flutter/material.dart';

import 'screens/item_home_screen.dart';

class ItemApp extends StatelessWidget {
  // const ItemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ItemHomeScreen(),
    );
  }
}
