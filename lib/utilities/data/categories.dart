import 'package:flutter/material.dart';
import 'package:MyTerra/models/category.dart';

class Categories {
  static List<Category> getMethodCategories() {
    return [
      Category(
          name: "Electrical",
          icon: Icon(
            Icons.lightbulb,
            color: Colors.white,
          ),
          color: Colors.red,
          imgName: "electrical",
          subCategories: []),
      Category(
          name: "Hoovers",
          icon: Icon(
            Icons.cleaning_services,
            color: Colors.white,
          ),
          color: Colors.blue,
          imgName: "hoover",
          subCategories: []),
      Category(
          name: "Kitchen Stuff",
          icon: Icon(
            Icons.kitchen,
            color: Colors.white,
          ),
          color: Colors.yellow,
          imgName: "kitchen",
          subCategories: [])
    ];
  }
}
