import 'dart:convert';

import 'package:storeapp/models/product_models.dart';
import 'package:http/http.dart' as http;

class CategoriesServices {
  Future <List<ProductModels>> categoriesServices(
      {required String categoryName}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
    List<dynamic>data = jsonDecode(response.body);
    List<ProductModels>productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModels.fromJson(data[i]));
    }
    return productList;
  }

}