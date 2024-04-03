import 'package:flutter/material.dart';
import 'package:cc/adv_state_module/logics/product_logic.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';

class ProductScreen extends StatefulWidget {
  // const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Screen"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: productList.length,
      itemBuilder: (context, index) {
        return _buildItem(productList[index]);
      },
    );
  }

  Widget _buildItem(ProductModel item) {
    bool isFavorite = context.watch<ProductLogic>().isFavorite(item);

    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(motion: DrawerMotion(), children: [
        SlidableAction(
          onPressed: (ctx) {
            context.read<ProductLogic>().addToFavorite(item);
          },
          flex: 2,
          backgroundColor: Color.fromARGB(255, 240, 159, 28),
          foregroundColor: Colors.white,
          icon: Icons.save_alt,
          label: "Pin",
        ),
      ]),
      endActionPane: ActionPane(motion: DrawerMotion(), children: [
        SlidableAction(
          onPressed: (ctx) {
            context.read<ProductLogic>().addToFavorite(item);
          },
          flex: 2,
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          icon: Icons.archive,
          label: "Archive",
        ),
        SlidableAction(
          onPressed: (ctx) {},
          flex: 2,
          backgroundColor: const Color.fromARGB(255, 30, 233, 226),
          foregroundColor: Colors.white,
          icon: Icons.favorite,
          label: "Favorite",
        )
      ]),
      child: Card(
        child: ListTile(
            leading: IconButton(
              onPressed: () {
                if (isFavorite == false) {
                  context.read<ProductLogic>().addToFavorite(item);
                }
              },
              icon: isFavorite
                  ? Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    )
                  : Icon(Icons.favorite_border),
            ),
            title: Text("${item.name}"),
            subtitle: Text("USD ${item.price} \n${item.qty} items \nin stock"),
            // trailing: Text(
            //   "${item.qty} items \nin stock",
            //   style: TextStyle(fontSize: 15),
            // ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.check_box_outline_blank))),
      ),
    );
  }
}
