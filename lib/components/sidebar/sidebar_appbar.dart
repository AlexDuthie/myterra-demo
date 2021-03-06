import 'package:flutter/material.dart';
import 'package:MyTerra/components/buttons/menu_button.dart';
import 'package:MyTerra/utilities/index.dart';

class SideAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Size preferredSize = Size.fromHeight(sideAppBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 47),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Home');
                },
                  child: RichText(
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
