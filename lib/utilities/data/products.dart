import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:MyTerra/models/product.dart';

Future<List> getProductData() async {
  var response = await http.get(Uri.https('f758ae82.eu-gb.apigw.appdomain.cloud','productslist/products'),
      headers: {'accept': "application/json"});
  var jsonData = jsonDecode(response.body);
  jsonData = jsonData['entries'];
  List<Product> products = [];

  for(var json in jsonData){
    Product product = Product(
        productName: json['productName'],
        productDescription: json['productDescription'],
        imgName: json['imgName'],
        stars: json['stars'],
        category: json['category'],
        rating: json['rating']
    );
    products.add(product);
  }
  return products;
}

