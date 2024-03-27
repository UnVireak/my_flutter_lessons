import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class ProductService{
  static Future<List<ProductModel>> getAPI() async {
    try {
      http.Response response =
          await http.get(Uri.parse("https://fakestoreapi.com/products"));
      return compute(productModelFromMap, response.body);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
