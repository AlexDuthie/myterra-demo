import 'package:flutter/material.dart';
import 'package:mobile_app/components/buttons/menu_button.dart';
import 'package:mobile_app/utilities/index.dart';

class SideAppBar extends StatelessWidget implements PreferredSizeWidget{
  final Size preferredSize = Size.fromHeight(sideAppBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(
            "My",
            style: TextStyle(color: Colors.greenAccent, fontSize: 40.0),
          ),
          Text(
            "Terra",
            style: TextStyle(color: Colors.lightGreenAccent, fontSize: 40.0),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      backgroundColor: sideAppBarColor,
      actions: [MenuIconButton(onPressed: () {})],
    );
  }
}
