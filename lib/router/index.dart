import 'package:flutter/material.dart';
import 'package:mobile_app/screens/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Home': (BuildContext context) => new HomeScreen(),
    '/Favourites': (BuildContext context) => new FavouritesScreen(),
  };

  Routes() {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TerraCare',
        routes: routes,
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: new HomeScreen(),
      ),
    );
  }
}
