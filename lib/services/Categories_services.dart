import 'dart:convert';

import 'package:storeapp/models/product_models.dart';
import 'package:http/http.dart' as http;

import '../helpers/api_function.dart';

class CategoriesServices {
  Future<List<ProductModels>> categoriesServices(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModels> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModels.fromJson(data[i]));
    }
    return productList;
  }
}
