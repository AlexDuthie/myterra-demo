import 'package:flutter/material.dart';
import 'package:mobile_app/components/index.dart';
import 'package:mobile_app/components/appbar/main_appbar.dart';
import 'package:mobile_app/utilities/constants.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          child: Text("This is the Profile"),
        ),
      ),
    );
  }
}
