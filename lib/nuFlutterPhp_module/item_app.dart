import 'package:flutter/material.dart';

import 'screens/item_home_screen.dart';

class ItemApp extends StatelessWidget {
  // const ItemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ItemHomeScreen(),
      theme: ThemeData(
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 1,
          shadowColor: Colors.deepPurple.withOpacity(.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          titleSmall: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}