import 'package:cc/state_module/language_const.dart';
import 'package:cc/state_module/language_logic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_logic.dart';
import 'theme_logic.dart';

class NextScreen extends StatefulWidget {
  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    int counter = context.watch<CounterLogic>().count;
    bool dark = context.watch<ThemeLogic>().dark;
    Language lang = context.watch<LanguageLogic>().lang;

    return Scaffold(
      // backgroundColor: dark ? Colors.grey[800] : Colors.white,
      appBar: AppBar(
        // backgroundColor: dark ? Colors.blueGrey[800] : Colors.pink,
        title: Text(lang.detailPage),
        actions: [
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().decrease();
            },
            icon: Icon(Icons.remove),
          ),
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().increase();
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Text(
          "More than 100 people killed in twin blasts near slain Iran commander’s grave",
          // style: TextStyle(
          // fontSize: 18 + counter.toDouble(),
          //color: dark ? Colors.white: Colors.black,
          // ),
        ),
      ),
    );
  }
}
