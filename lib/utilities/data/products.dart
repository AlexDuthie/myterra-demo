import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_app/models/product.dart';

Future getProductData() async {
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
        category: json['category']
    );
    products.add(product);
  }
  return products;
}
