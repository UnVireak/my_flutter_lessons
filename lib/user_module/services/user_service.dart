import 'package:flutter/foundation.dart';
import '/user_module/models/random_user_model.dart';
import 'package:http/http.dart' as http;

class UserService{
  static Future<RandomUserModel> getAPI() async {
    try {
      http.Response response =
          await http.get(Uri.parse("https://randomuser.me/api/?results=33&page=1"));
      return compute(randomUserModelFromMap, response.body);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
