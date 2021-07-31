import 'package:flutter/material.dart';
import 'package:MyTerra/screens/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Home': (BuildContext context) => new HomeScreen(),
    '/Favourites': (BuildContext context) => new FavouritesScreen(),
    '/FAQ': (BuildContext context) => new FAQScreen(),
    '/Theme': (BuildContext context) => new ThemeScreen(),
    '/Notification': (BuildContext context) => new NotificationScreen(),
    '/Contact': (BuildContext context) => new ContactScreen(),
    '/Profile': (BuildContext context) => new ProfileScreen(),
    '/ProfileSettings': (BuildContext context) => new ProfileSettingsScreen(),
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
