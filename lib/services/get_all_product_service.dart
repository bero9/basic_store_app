import 'dart:convert';

import 'package:storeapp/helpers/api_function.dart';
import 'package:storeapp/models/product_models.dart';
import 'package:http/http.dart' as http;

class GetAllProductServices {
  Future<List<ProductModels>> getAllProduct() async {
    List<dynamic> data = await Api().get(
        url: 'https://fakestoreapi.com/products');


    List<ProductModels> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModels.fromJson(data[i]));
    }
    return productList;
  }

}