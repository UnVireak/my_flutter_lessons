import 'package:cc/basic_module/home_screnn.dart';
import 'package:cc/basic_module/layout_screen.dart';
import 'package:cc/basic_module/netflix.dart';
import 'package:cc/none_state/first_screen.dart';
import 'package:cc/state_module/language_logic.dart';
import 'package:cc/state_module/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:cc/state_module/counter_logic.dart';
// import 'package:cc/state_module/next_screen.dart';
import 'package:cc/state_module/theme_logic.dart';
import 'package:cc/state_module/language_const.dart';
import 'package:provider/provider.dart';

class FrontScreen extends StatefulWidget {
  // const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  @override
  Widget build(BuildContext context) {
    int cnt = context.watch<CounterLogic>().count;
    bool dark = context.watch<ThemeLogic>().dark;
    Language lang = context.watch<LanguageLogic>().lang;

    return Scaffold(
      // backgroundColor: dark ? Colors.black : Colors.white,
      // appBar: AppBar(
      //   // backgroundColor:dark ? Colors.blueGrey[800] : Colors.pink,
      //   title: Text(lang.appName),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         context.read<CounterLogic>().decrease();
      //       },
      //       icon: Icon(Icons.remove),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         context.read<CounterLogic>().increase();
      //       },
      //       icon: Icon(Icons.add),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         context.read<ThemeLogic>().toggleDark();
      //       },
      //       icon: Icon(dark?Icons.light_mode: Icons.dark_mode),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         Navigator.of(context).push(
      //           MaterialPageRoute(
      //             builder: (x) => NextScreen(),
      //           ),
      //         );
      //       },
      //       icon: Icon(Icons.settings),
      //     ),
      //   ],
      // ),
      body: _buildBody(),
      //      body: SingleChildScrollView(
      //   child: Text(
      //     "Jeffrey Epstein documents unsealed, naming Prince Andrew and former President Clinton",
      //     // style: TextStyle(
      //     //   fontSize: 18 + cnt.toDouble(),
      //     //   // color: dark ? Colors.white: Colors.black,
      //     // ),
      //   ),
      // ),
      
      drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(child: Icon(Icons.face, size: 50)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(lang.home),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text(lang.contact),
              trailing: Icon(Icons.navigate_next),
            ),
            ExpansionTile(
              initiallyExpanded: true,
              title: Text(lang.language),
              children: [
                ListTile(
                  leading: Text(
                    "ខ្មែរ",
                    style: TextStyle(fontSize: 18),
                  ),
                  title: Text("ប្តូរទៅភាសាខ្មែរ"),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    context.read<LanguageLogic>().changeToKhmer();
                  },
                ),
                ListTile(
                  leading: Text(
                    "EN",
                    style: TextStyle(fontSize: 18),
                  ),
                  title: Text("Change To English"),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    context.read<LanguageLogic>().changeToEnglish();
                  },
                ),

                  ListTile(
                  leading: Text(
                    "中文",
                    style: TextStyle(fontSize: 18),
                  ),
                  title: Text("改为中文"),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    context.read<LanguageLogic>().changeToChinese();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottom(),
    );
  }

  Widget _buildBody(){
    return IndexedStack(
      index: _currentIndex,
     children: [
      NetflixLayoutScreen(),
      HomeScreen(),
      FirstScreen(),
      LayoutScreen()
     ],
    );
  }

  int _currentIndex = 0;

  Widget _buildBottom() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index){
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play"),
        BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: "Camera"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "Menu"),
      ],
    );
  }

}
