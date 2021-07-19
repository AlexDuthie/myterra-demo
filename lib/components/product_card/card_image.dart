import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {

  CardImage({required this.imageURL});

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        imageURL,
        height: double.infinity,
        fit: BoxFit.contain, //TODO: maybe change to cover
        alignment: Alignment.center,
      ),
    );
  }
}
