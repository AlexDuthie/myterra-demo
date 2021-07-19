import 'package:flutter/material.dart';

class MenuIconButton extends StatelessWidget {

  MenuIconButton({required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.menu,
        color: Colors.white,
        size: 35,
      ),
      onPressed: (){
        onPressed();
      },
    );
  }
}
