import 'package:flutter/material.dart';
import 'package:mobile_app/utilities/index.dart';

class CardTitles extends StatelessWidget {

  CardTitles({required this.header, required this.subHeader, required this.style});

  final String header;
  final String subHeader;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: cardHeaderStyle,
        ),
        SizedBox(height: 2),
        Text(
          subHeader,
          style: style
        ),
        SizedBox(height: 2)
      ],
    );
  }
}

