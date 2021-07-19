import 'dart:ui';
import 'package:flutter/material.dart';

class Category {
  final String name;
  final Icon icon;
  final Color color;
  final String imgName;
  final List<Category> subCategories;

  Category({
    required this.name,
    required this.icon,
    required this.color,
    required this.imgName,
    required this.subCategories
  });
}
