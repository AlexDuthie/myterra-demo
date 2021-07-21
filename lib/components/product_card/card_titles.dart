import 'package:flutter/material.dart';
import 'package:mobile_app/utilities/index.dart';

class CardTitles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Product Name',
          style: cardHeaderStyle,
        ),
        SizedBox(height: 2),
        Text(
          'Company/ Org',
          style: cardSubHeaderStyle,
        ),
        SizedBox(height: 2)
      ],
    );
  }
}

