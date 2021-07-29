import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.share,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}

