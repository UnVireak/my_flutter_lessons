import 'package:flutter/material.dart';
import '../models/item_model.dart';


class ItemDetailScreen extends StatefulWidget {
  final Result item;

  ItemDetailScreen(this.item);

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item Detail Screen"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Image.network(widget.item.image, fit: BoxFit.cover,),
          Text(widget.item.title, style: Theme.of(context).textTheme.titleLarge),
          Text(widget.item.description, style: Theme.of(context).textTheme.titleSmall),
          Text("USD ${widget.item.price}", style: Theme.of(context).textTheme.titleMedium),
          Text("${widget.item.qty} in stock", style: Theme.of(context).textTheme.titleLarge),
        ],
      ),
    );
  }
}
