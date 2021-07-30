class Product {
  final String productName;
  final String productDescription;
  final String imgName;
  final double stars;
  final String category;

  Product({
    required this.productName,
    required this.productDescription,
    required this.imgName,
    required this.stars,
    required this.category
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productName: json['productName'],
      productDescription: json['productDescription'],
      imgName: json['imgName'],
      stars: json['stars'],
      category: json['category'],
    );
  }
}
