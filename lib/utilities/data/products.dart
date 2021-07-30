import 'dart:async';
import 'dart:convert';
import 'package:mobile_app/models/product.dart';
import 'package:http/http.dart' as http;

Future<Product> getProducts() async {
  final response = await http.get(Uri.parse('https://f758ae82.eu-gb.apigw.appdomain.cloud/productslist/products'), headers: {
    'accept': "application/json",
  });

  if (response.statusCode == 200) {
    //print(response.body);
    var productlist = jsonDecode(response.body[0]);
    assert(productlist is List);
    print(productlist);
    return Product.fromJson(productlist);
  } else {
    throw Exception('Failed to load');
  }
}