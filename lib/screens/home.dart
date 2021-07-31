import 'package:flutter/material.dart';
import 'package:MyTerra/components/index.dart';
import 'package:MyTerra/utilities/index.dart';

//TODO Implement

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: defaultBackgroundColour,
        appBar: MainAppBar(
          appBarColor: appBarColor,
        ),
        drawer: MainSideBar(),
        body: CustomScrollView(
          slivers: [
            ProductCard(),
          ],
        ),
      ),
    );
  }
}
