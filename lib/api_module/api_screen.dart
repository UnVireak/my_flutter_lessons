
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;


class ApiScreen extends StatefulWidget {
  // const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  // Future<String> _getFakeData() {
  //   return Future.delayed(Duration(seconds: 3), () {
  //     return "Data received";
  //   });
  // }

  Future<List<Map<String, dynamic>>> _getAPI() async {
    try {
      http.Response response =
          await http.get(Uri.parse("https://fakestoreapi.com/products"));
      return _convertAPI(response.body);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  List<Map<String, dynamic>> _convertAPI(String body) {
    List list = json.decode(body);
    List<Map<String, dynamic>> items =
        list.map((e) => e as Map<String, dynamic>).toList();
    return items;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Screen"),
      ),
      body: Center(
        child: FutureBuilder<List<Map<String, dynamic>>>(
          future: _getAPI(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return _buildGridView(snapshot.data ?? []);
            } else {
              return SpinKitPumpingHeart(
                color: Colors.pink,
              );
            }
          },
        ),
      ),
    );
  }

 Widget _buildGridView(List<Map<String, dynamic>> list) {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // You can adjust the number of columns here
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
    ),
    itemCount: list.length,
    itemBuilder: (context, index) {
      return _buildItem(list[index]);
    },
  );
}


  // Widget _buildItem(Map<String, dynamic> item) {
  //   return Card(
  //     child: ListTile(
  //       title: Image.network(item["image"]),
  //       ),
  //       subtitle: Text(item["title"], style: const TextStyle(fontSize:10),
  //     ),
  //   );
  // }

 Widget _buildItem(Map<String, dynamic> item) {
  return Card(
    child: Container(
      height: 300, // Set the desired height for the card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
              Expanded(
            flex: 6, // 60% of the box
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Image.network(
                  item["image"],
                  fit: BoxFit.cover, // Adjust the image fitting as needed
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3, // 30% of the box
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  item["title"],
                   maxLines: 2, // Limit to 2 lines
                  overflow: TextOverflow.ellipsis, // Add ellipsis if exceeds 2 lines
                  style: TextStyle(fontSize: 15), 
                
                   // Adjust font size as needed
                ),
              ),
            ),
          ),
      
        ],
      ),
    ),
  );
}

}
