import 'package:flutter/material.dart';

import 'product_favorite_screen.dart';
import 'product_screen.dart';

class ProductMainScreen extends StatefulWidget {
  // const ProductMainScreen({super.key});

  @override
  State<ProductMainScreen> createState() => _ProductMainScreenState();
}

class _ProductMainScreenState extends State<ProductMainScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ProductScreen(),
          ProductFavoriteScreen(),
          Container(color: Colors.blue,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorte"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "Menu"),
        ],
      ),
    );
  }
}