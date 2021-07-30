import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

getProducts() async {
  List<Product> productlist = [];

  final response = await http.get(Uri.parse('https://f758ae82.eu-gb.apigw.appdomain.cloud/productslist/products'), headers: {
    'accept': "application/json",
  });

  if (response.statusCode == 200) {
    var products = json.decode(response.body);
    for(int index=0; index<products['entries'].length;index++) {
      productlist.add(Product.fromJson(products, index));
    }
    return productlist;
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

  factory Product.fromJson(Map<String, dynamic> json, index) {
      return Product(
        productName: json['entries'][index]['productName'],
        productDescription: json['entries'][index]['productDescription'],
        imgName: json['entries'][index]['imgName'],
        stars: json['entries'][index]['stars'],
        category: json['entries'][index]['category'],
      );
  }
}
