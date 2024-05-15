// import 'package:cc/basic_module/basic_app_dart.dart';
// import 'package:cc/none_state/nonestate_app.dart';
// import 'package:flutter/material.dart';
// // import 'package:cc/none_state/first_screen.dart';
// import 'package:cc/state_module/state_app.dart';
// import 'package:cc/api_module/api_app.dart';
// void main() {
//   runApp(ApiApp());
//  }  
  


// import 'package:cc/api_module/api_app.dart';
import 'package:cc/adv_state_module/adv_state_app.dart';
import 'package:cc/api_module/api_screen.dart';
import 'package:cc/sample_loading.dart';
import 'package:cc/user_module/user_app.dart';
import 'package:flutter/material.dart';
import 'package:cc/mvc/api_app.dart';
import 'package:cc/cache_module/cache_app.dart';


import 'nuFlutterPhp_module/item_app.dart';

void main() {
  runApp(ItemApp());
}


// void main() {
//   runApp(cacheAppWithProvider());
// }




// import 'package:cc/testCrypto.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     MyLogin login = MyLogin();
//     login.password = "admin";
//     print(login.hashPassword);
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   void _onShareTapped() {
//     print("share icon tapped");
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
        
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
//         title: Text(widget.title),
//         actions: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 _counter--;
//               });
//             },
//             icon: Icon(Icons.remove),
//           ),
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 _counter++;
//               });
//             },
//             icon: Icon(Icons.add),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// class _ {}
