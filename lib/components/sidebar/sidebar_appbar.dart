import 'package:flutter/material.dart';
import 'package:mobile_app/components/buttons/menu_button.dart';
import 'package:mobile_app/utilities/index.dart';

class SideAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Size preferredSize = Size.fromHeight(sideAppBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "My",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color.fromRGBO(2, 7, 1, 1.0),
              ),
            ),
            TextSpan(
              text: "Terra",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color.fromRGBO(77, 227, 55, 1.0),
              ),
            ),
          ],
        ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: sideAppBarColor,
      actions: [
        MenuIconButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
