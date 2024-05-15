import 'package:cc/cache_module/helpers/language_helper.dart';
import 'package:flutter/material.dart';
import 'package:cc/cache_module/logics/cache_theme_logic.dart';
import 'package:provider/provider.dart';

class PrefScreen extends StatefulWidget {
  // const PrefScreen({super.key});

  @override
  State<PrefScreen> createState() => _PrefScreenState();
}

class _PrefScreenState extends State<PrefScreen> {
  @override
  Widget build(BuildContext context) {
    CacheLanguage lang = context.watch<CacheThemeLogic>().cacheLang;

    return Scaffold(
      appBar: AppBar(
        title: Text(lang.appName),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Row(
            children: [
              IconButton(
                onPressed: () {context.read<CacheThemeLogic>().changeToEnglish();},
                icon: Text("EN"),
              ),
              IconButton(
                  onPressed: () {
                    context.read<CacheThemeLogic>().changeToKhmer();
                  },
                  icon: Text("KH"),
                  ),
                     IconButton(
                  onPressed: () {
                    context.read<CacheThemeLogic>().changeToChinese();
                  },
                  icon: Text("CH"),
                  ),
                      IconButton(
                  onPressed: () {
                    context.read<CacheThemeLogic>().changeToThai();
                  },
                  icon: Text("TH"),
                  ),
                         IconButton(
                  onPressed: () {
                    context.read<CacheThemeLogic>().changeToJapan();
                  },
                  icon: Text("JP"),
                  ),
                           IconButton(
                  onPressed: () {
                    context.read<CacheThemeLogic>().changeToFrench();
                  },
                  icon: Text("FR"),
                  ),
                  
            ],
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToLight();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.yellow), // Change the color to whatever you like
              ),
              child: Text(
                lang.chaneToLightMode,
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToDark();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.yellow), // Change the color to whatever you like
              ),
              child: Text(
                lang.changeToDarkMode,
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToSystem();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.yellow), // Change the color to whatever you like
              ),
              child: Text(
                lang.changeToSystemMode,
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
