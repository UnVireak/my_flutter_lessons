import 'package:flutter/material.dart';
import 'package:cc/cache_module/logics/cache_theme_logic.dart';
import 'package:provider/provider.dart';
import 'screens/pref_screen.dart';

Widget cacheAppWithProvider() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CacheThemeLogic()),
    ],
    child: LoadingScreen(),
  );
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
          future: context.read<CacheThemeLogic>().initCache(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return CacheApp();
            } else {
             return MaterialApp(
                home: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

class CacheApp extends StatelessWidget {
  // const CacheApp({super.key});

  @override
  Widget build(BuildContext context) {
    int modeIndex = context.watch<CacheThemeLogic>().modeIndex;

    ThemeMode themeMode = ThemeMode.light;

    switch (modeIndex) {
      case 1:
        themeMode = ThemeMode.light;
        break;
      case 2:
        themeMode = ThemeMode.dark;
        break;
      case 3:
        themeMode = ThemeMode.system;
        break;
      default:
        themeMode = ThemeMode.light;
    }

    return MaterialApp(
      themeMode: themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: PrefScreen(),
    );
  }
}
