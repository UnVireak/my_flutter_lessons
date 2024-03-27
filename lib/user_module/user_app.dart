import 'package:flutter/material.dart';
import '/user_module/screens/user_screen.dart';

class UserApp extends StatelessWidget {
  // const UserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserScreen(),
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[900],
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
