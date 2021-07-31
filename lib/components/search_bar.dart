import 'package:flutter/material.dart';
import 'package:MyTerra/utilities/index.dart';

class MainSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (String str){
        print(str);
      },
      onChanged: (String str){},
      cursorColor: searchBarCursorColor,
      showCursor: true,
      style: searchBarTextStyle,
      decoration: searchBarDecoration,
    );
  }
}
