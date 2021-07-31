import 'package:flutter/material.dart';
import 'package:MyTerra/components/index.dart';
import 'package:MyTerra/components/appbar/main_appbar.dart';
import 'package:MyTerra/utilities/constants.dart';

//TODO Implement

class ProfileSettingsScreen extends StatefulWidget {
  @override
  _ProfileSettingsScreenState createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
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
          child: CustomScrollView(
            slivers: [
              ProductCard(),
            ],
          ),
        ),
      ),
    );
  }
}
