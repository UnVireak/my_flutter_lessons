import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'logics/product_logic.dart';
import 'screens/product_main_screen.dart';

Widget advStateAppWithState() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ProductLogic()),
    ],
    child: AdvStateApp(),
  );
}

class AdvStateApp extends StatelessWidget {
  // const AdvStateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductMainScreen(),
      theme: ThemeData(
        // brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          backgroundColor: Colors.pink,
        ),
        listTileTheme: ListTileThemeData(),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
