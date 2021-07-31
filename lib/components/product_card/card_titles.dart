import 'package:flutter/material.dart';
import 'package:MyTerra/utilities/index.dart';

//TODO Fix Name and Description sizes and wrapping

class CardTitles extends StatelessWidget {
  CardTitles({required this.title, required this.description});
  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: cardHeaderStyle,
        ),
        SizedBox(height: 2),
        Text(
          description,
          style: cardSubHeaderStyle,
        ),
        SizedBox(height: 2)
      ],
    );
  }
}

