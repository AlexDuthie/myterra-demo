import 'package:flutter/material.dart';
import 'package:mobile_app/utilities/index.dart';
import 'package:mobile_app/components/index.dart';

class SideAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: sideAppBarMargin,
      height: sideAppBarHeight,
      width: double.infinity,
      decoration: sideBarDecoration,
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              right: 5,
              bottom: 2,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: MenuIconButton(
                onPressed: () => Navigator.of(context).pop(),
              )
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/Home');
              },
            child: RichText(
              text: TextSpan(
                text: "Terra",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromRGBO(2, 7, 1, 1.0),
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Care",
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
    );
  }
}