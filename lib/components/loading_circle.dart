import 'package:flutter/material.dart';

class LoadingCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(60),
        child: CircularProgressIndicator(),
      ),
    );
  }
}

