import 'package:flutter/material.dart';
import 'package:MyTerra/components/index.dart';
import 'package:MyTerra/components/appbar/main_appbar.dart';
import 'package:MyTerra/utilities/constants.dart';

//TODO Implement

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
