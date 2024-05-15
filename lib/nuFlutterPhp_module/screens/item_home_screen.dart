import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ItemHomeScreen extends StatefulWidget {
  // const ItemHomeScreen({super.key});

  @override
  State<ItemHomeScreen> createState() => _ItemHomeScreenState();
}

class _ItemHomeScreenState extends State<ItemHomeScreen> {
  Future<String> readAPI() async {
    // String url = 'http://10.0.2.2/phpFlutterDb/product.php';

    String url = "http://10.0.2.2/phpFlutterDb/product.php";

    try {
      http.Response res = await http.get(Uri.parse(url));
      return res.body;
    } catch (e) {
      throw Exception("Error: ${e.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Item Screen"),
        ),
        body: Center(
          child: FutureBuilder<String>(
            future: readAPI(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text("Error ${snapshot.error}");
              }
              if (snapshot.connectionState == ConnectionState.done) {
                return Text("${snapshot.data}");
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ));
  }
}
