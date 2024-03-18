import 'package:flutter/material.dart';
import 'package:cc/state_module/counter_logic.dart';
import 'package:cc/state_module/front_screen.dart';
import 'package:cc/state_module/theme_logic.dart';
import 'package:provider/provider.dart';
import 'package:cc/state_module/language_logic.dart';

Widget stateAppWithProvider() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (x) => CounterLogic()),
      ChangeNotifierProvider(create: (x) => ThemeLogic()),
      ChangeNotifierProvider(create: (x) => LanguageLogic()),

    ],
    child: StateApp(),
  );
}

class StateApp extends StatelessWidget {
  // const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = context.watch<ThemeLogic>().dark;
    int counter = context.watch<CounterLogic>().count;
    return MaterialApp(
      home: FrontScreen(),
      themeMode: dark ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink
        ),
        canvasColor: Colors.grey[100],
        textTheme: TextTheme (
          bodyMedium: TextStyle(fontSize: 17 + counter.toDouble())
        ),
        drawerTheme: DrawerThemeData ( backgroundColor: Colors.pink),
      ),
      
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        canvasColor: Colors.black,
        textTheme: TextTheme (
          bodyMedium: TextStyle(fontSize: 17 + counter.toDouble())
        ),
      ), 
    );
  }
}
