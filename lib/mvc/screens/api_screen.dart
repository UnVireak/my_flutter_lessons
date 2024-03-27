import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../models/product_model.dart';
import '../services/product_service.dart';

class ApiScreen extends StatefulWidget {
  // const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Api Screen"),
      ),
      body: Center(
        child: FutureBuilder<List<ProductModel>>(
          future: ProductService.getAPI(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return _buildListView(snapshot.data ?? []);
            } else {
              return SpinKitThreeBounce(
                color: Colors.pink,
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildListView(List<ProductModel> list) {
    return ListView(
      children: list.map((e) => _buildItem(e)).toList(),
    );
  }

  Widget _buildItem(ProductModel item) {
    return Card(
      child: ListTile(
        title: Text(
          item.title,
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Image.network(item.image),
      ),
    );
  }
}

