import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductLogic extends ChangeNotifier{
  final List<ProductModel> _favoriteList = [];
  List<ProductModel> get favoriteList => _favoriteList;

  void addToFavorite(ProductModel item){
    _favoriteList.add(item);
    notifyListeners();
  }

  void removeFromFavorite(ProductModel item){
    _favoriteList.remove(item);
    notifyListeners();
  }

  bool isFavorite(ProductModel item){
    return _favoriteList.contains(item);
  }

}