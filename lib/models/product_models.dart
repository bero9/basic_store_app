class ProductModels {
  final int id;
  final String title;
  final String description;
  final double price;
  final String category;
  final String image;
  final RatingModels ratting;

  ProductModels({
    required this.ratting,
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
  });

  factory ProductModels.fromJson(jsonData) {
    return ProductModels(
      id: jsonData['id'],
      title: jsonData['title'],
      description: jsonData['description'],
      price: jsonData['price'],
      category: jsonData['category'],
      image: jsonData['image'],
      ratting
      :RatingModels.fromJson(jsonData['rating']),
    );
  }
}

class RatingModels {
  final double rate;
  final int count;

  RatingModels({required this.rate, required this.count});

  factory RatingModels.fromJson(jsonData) {
    return RatingModels(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
