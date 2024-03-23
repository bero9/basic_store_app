import '../helpers/api_function.dart';
import '../models/product_models.dart';

class UpdatePoduct{
  Future<ProductModels> updateProduct({ required String title,
    required String price,
    required String description,
    required String image,
    required String category}) async {
    Map<String,dynamic> data  =await Api().post(
      url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    }, );
    return ProductModels.fromJson(data);
  }
}