import 'dart:async';
import 'dart:convert';
import 'package:mobile_app/models/product.dart';
import 'package:http/http.dart' as http;

Future<Product> getProducts() async {
  final response = await http
      .get(Uri.parse('https://f758ae82.eu-gb.apigw.appdomain.cloud/productslist'));

  if (response.statusCode == 200) {
    return Product.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}