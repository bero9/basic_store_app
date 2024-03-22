import 'dart:convert';

import 'package:http/http.dart' as http;

import '../helpers/api_function.dart';

class GetAllCategory {
  Future<List<dynamic>> getAllCategory() async {
    List<dynamic> data = await Api().get(
        url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
