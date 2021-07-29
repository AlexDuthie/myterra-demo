import 'package:flutter/material.dart';

class BulbRating extends StatelessWidget {
  BulbRating({required this.bulbRating});

  final String bulbRating;

  @override
  Widget build(BuildContext context) {
    return Stack(
      //TODO: replace with custom bulb images
      alignment: Alignment.center,
      children: [
        Icon(Icons.lightbulb, size: 50),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(
            bulbRating,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
