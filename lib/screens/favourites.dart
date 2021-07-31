import 'package:flutter/material.dart';
import 'package:MyTerra/components/index.dart';
import 'package:MyTerra/components/appbar/main_appbar.dart';
import 'package:MyTerra/utilities/constants.dart';

//TODO Implement

class FavouritesScreen extends StatefulWidget {
  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
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
