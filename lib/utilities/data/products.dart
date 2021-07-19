import 'package:mobile_app/models/product.dart';


class Products {
  static List<Product> getProducts() {
    return [
      Product(
          productName: "Hoover",
          productDescription: "This is a Hoover",
          imgName: 'https://images.pexels.com/photos/4107275/pexels-photo-4107275.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
          stars: 4.5,
          category: "Hoovers"
      ),
      Product(
          productName: "Hoover",
          productDescription: "This is a Hoover",
          imgName: 'https://images.pexels.com/photos/4107275/pexels-photo-4107275.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
          stars: 4.5,
          category: "Hoovers"
      ),
      Product(
          productName: "Hoover",
          productDescription: "This is a Hoover",
          imgName: 'https://images.pexels.com/photos/4107275/pexels-photo-4107275.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
          stars: 4.5,
          category: "Hoovers"
      ),
    ];
  }
}
