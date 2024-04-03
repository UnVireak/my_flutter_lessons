import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../logics/product_logic.dart';
import '../models/product_model.dart';

class ProductFavoriteScreen extends StatefulWidget {
  // const ProductFavoriteScreen({super.key});

  @override
  State<ProductFavoriteScreen> createState() => _ProductFavoriteScreenState();
}

class _ProductFavoriteScreenState extends State<ProductFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Screen"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    List<ProductModel> favoriteList = context.watch<ProductLogic>().favoriteList;

    return ListView.builder(
      itemCount: favoriteList.length,
      itemBuilder: (context, index) {
        return _buildItem(favoriteList[index]);
      },
    );
  }

  Widget _buildItem(ProductModel item) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.horizontal,
      onDismissed: (direction) =>{
        if(direction == DismissDirection.endToStart){
          context.read<ProductLogic>().removeFromFavorite(item)
        }
      } ,
      child: Card(
        child: ListTile(
          leading: IconButton(
            onPressed: () {
              context.read<ProductLogic>().removeFromFavorite(item);
            },
            icon: Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
          ),
          title: Text("${item.name}"),
          subtitle: Text("USD ${item.price}"),
          trailing: Text(
            "${item.qty} items \nin stock",
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
