import 'dart:convert';
import 'package:mobile_app/models/product.dart';
import 'package:http/http.dart' as http;

class Products {
  List<Product> product = [];

  Future<void> getProducts() async {

    String APIurl = "https://f758ae82.eu-gb.apigw.appdomain.cloud/productslist";

    var response = await http.get(Uri.parse(APIurl));
    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["products"].forEach((element) {
        Product productModel = Product(
          productName: element['productName'],
          productDescription: element["productDescription"],
          imgName: element["imgName"],
          stars: element["stars"],
          category: element["category"],
        );
        product.add(productModel);
      });
    }

  }
}