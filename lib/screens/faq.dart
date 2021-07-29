import 'package:flutter/material.dart';
import 'package:mobile_app/components/index.dart';
import 'package:mobile_app/components/appbar/main_appbar.dart';
import 'package:mobile_app/utilities/constants.dart';

class FAQScreen extends StatefulWidget {
  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar(appBarColor: appBarColor),
        drawer: MainSideBar(),
        body: Container(
          decoration: backgroundDecoration,
          margin: screensBackground,
          width: backgroundSize,
          height: backgroundSize,
        ),
      ),
    );
  }
}
