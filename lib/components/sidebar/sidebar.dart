import "package:flutter/material.dart";
import 'package:mobile_app/components/index.dart';
import 'package:mobile_app/utilities/index.dart';

class MainSideBar extends StatefulWidget {
  @override
  _MainSideBarState createState() => _MainSideBarState();
}

class _MainSideBarState extends State<MainSideBar> {
  List userSettings = [];
  List appSettings = [];

  @override
  void initState() {
    super.initState();
    userSettings = SideBarUser.getUserSettings();
    appSettings = SideBarHelp.getAppSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: SideAppBar(),
        backgroundColor: sideBarBackgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SideBarMenu(
                containerTitle: "User Settings",
                sideBarText: userSettings,
              ),
              SideBarMenu(
                containerTitle: "App Settings and Help",
                sideBarText: appSettings,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
