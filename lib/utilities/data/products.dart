import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Product> getProducts() async {
  final response = await http.get(Uri.parse('https://f758ae82.eu-gb.apigw.appdomain.cloud/productslist/products'), headers: {
    'accept': "application/json",
  });

  if (response.statusCode == 200) {
    return Product.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}

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
    print("results:");
    print(json['entries'][0]['imgName']);
    return Product(
      productName: json['entries'][0]['productName'],
      productDescription: json['entries'][0]['productDescription'],
      imgName: json['entries'][0]['imgName'],
      stars: json['entries'][0]['stars'],
      category: json['entries'][0]['category'],
    );
  }
}
