import "package:flutter/material.dart";
import 'package:mobile_app/components/index.dart';
import 'package:mobile_app/utilities/constants.dart';

class SideBarMenu extends StatelessWidget {
  SideBarMenu({required this.containerTitle, required this.sideBarText});
  final String containerTitle;
  final List sideBarText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              containerTitle,
              style: sideBarMenuTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            width: double.infinity,
            margin: sideBarMenuMargin,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.builder(
                    itemCount: sideBarText.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return TextBuilder(
                        containerTitle: containerTitle,
                        settingsText: '${sideBarText[index].settingsText}',
                        textLink: '${sideBarText[index].textLink}',
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
