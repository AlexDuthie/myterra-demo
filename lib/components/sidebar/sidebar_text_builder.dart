import 'package:flutter/material.dart';
import 'package:mobile_app/utilities/index.dart';

class TextBuilder extends StatelessWidget {
  TextBuilder(
      {required this.containerTitle,
      required this.settingsText,
      required this.textLink});
  final String containerTitle, settingsText, textLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: textBuilderContainerMargin,
            alignment: Alignment.centerLeft,
            width: textBuilderWidth,
            height: textBuilderHeight,
            child: new GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '$textLink');
              },
              child: Text(
                settingsText,
                style: textBuilderTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
