import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {

  CardButton({required this.label, required this.onPressed});

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      child: Container(
        margin: EdgeInsets.only(bottom: 1),
        color: Colors.grey,
        width: 120,
        child: TextButton(
          onPressed: () {
            onPressed();
          },
          child: Text(
            label.toUpperCase(),
            style: TextStyle(color: Colors.white),
          ),
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}

