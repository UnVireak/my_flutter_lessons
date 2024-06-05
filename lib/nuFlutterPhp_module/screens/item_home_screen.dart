import 'package:cc/nuFlutterPhp_module/item_app.dart';
import 'package:cc/nuFlutterPhp_module/models/item_model.dart';
import 'package:cc/nuFlutterPhp_module/screens/item_detail_screen.dart';
import 'package:cc/nuFlutterPhp_module/services/item_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ItemHomeScreen extends StatefulWidget {
  // const ItemHomeScreen({super.key});

  @override
  State<ItemHomeScreen> createState() => _ItemHomeScreenState();
}

class _ItemHomeScreenState extends State<ItemHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Item Screen"),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Center(
      child: FutureBuilder<ItemModel>(
        future: ItemService.readAPI(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("Error ${snapshot.error}");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return _buildOuptut(snapshot.data);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget _buildOuptut(ItemModel? model) {
    if(model == null){
      return SizedBox();
    }
    else{
      return _buildListView(model.results);
    }
  }

  Widget _buildListView(List<Result> results) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return _buildItem(results[index]);
      },
    );
  }

 Widget _buildItem(Result item) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ItemDetailScreen(item),
          ),
        );
      },
      child: Card(
        child: ListTile(
          leading: Image.network(item.image),
          title: Text(item.title),
          subtitle: Text(item.description),
          trailing: Text("USD ${item.price}"),
        ),
      ),
    );
  }

}


// class ItemHomeScreen extends StatefulWidget {
//   // const ItemHomeScreen({super.key});

//   @override
//   State<ItemHomeScreen> createState() => _ItemHomeScreenState();
// }

// class _ItemHomeScreenState extends State<ItemHomeScreen> {
//   Future<String> readAPI() async {
//     String url = 'http://10.0.2.2:8090/nuFlutterPhp/product.php';

//     try {
//       http.Response res = await http.get(Uri.parse(url));
//       return res.body;
//     } catch (e) {
//       throw Exception("Error: ${e.toString()}");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Item Screen"),
//         ),
//         body: Center(
//           child: FutureBuilder<String>(
//             future: readAPI(),
//             builder: (context, snapshot) {
//               if (snapshot.hasError) {
//                 return Text("Error ${snapshot.error}");
//               }
//               if (snapshot.connectionState == ConnectionState.done) {
//                 return Text("${snapshot.data}");
//               } else {
//                 return CircularProgressIndicator();
//               }
//             },
//           ),
//         ));
//   }
// }
