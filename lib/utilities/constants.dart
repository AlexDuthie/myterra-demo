import 'package:flutter/material.dart';

// Screens
const double backgroundSize = double.infinity;
const EdgeInsets screensBackground = EdgeInsets.only(
    left: 8,
    right: 8,
    top: 4,
    bottom: 8,
);
const backgroundDecoration = BoxDecoration(
  color: Color.fromRGBO(168, 168, 168, 1.0),
  borderRadius: BorderRadius.all(
    Radius.circular(5),
  ),
);

// Main AppBar
const Color appBarColor = Colors.blue;

// SideBar
const Color sideAppBarColor = Color.fromRGBO(34, 149, 242, 1.0);
const double sideAppBarHeight = 55;
const EdgeInsets sideAppBarMargin = EdgeInsets.only(bottom: 8);
const BoxDecoration sideBarDecoration = BoxDecoration(
  color: sideAppBarColor,
);

// SideBar Menu
const TextStyle sideBarMenuTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
);
const EdgeInsets sideBarMenuMargin = EdgeInsets.only(
  top: 3,
  left: 10,
  right: 10,
  bottom: 30,
);

// Search Bar
const InputDecoration searchBarDecoration = InputDecoration(
    labelText: 'Search MyTerra',
    icon: Icon(
      Icons.search_outlined,
      color: Colors.white,
    ),
    labelStyle: TextStyle(color: Colors.white));
const TextStyle searchBarTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
);
const Color searchBarCursorColor = Colors.white;

// Basket
const Color basketCountBackgroundColor = Colors.red;
const double basketWidth = 25;
const double basketHeight = 25;
const TextStyle basketCountTextStyle = TextStyle(color: Colors.white);
const Icon basketIcon = Icon(
  Icons.shopping_basket,
  color: Colors.white,
  size: 35,
);

// Product Card
const EdgeInsets productCardMargin = EdgeInsets.all(
  10,
);
const double productCardHeight = 180;
const productCardBoxDecoration = BoxDecoration(
  color: Color(0xffd3d3d3),
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
);
const productCardImageDecoration = BoxDecoration(
  color: Colors.grey,
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
);
const double cardImageHeight = 140;
const double cardImageWidth = 140;

// Card Rating
const Color ratingStarColor = Colors.orange;
const double ratingStarSize = 23;
const TextStyle cardHeaderStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
);
const TextStyle cardSubHeaderStyle = TextStyle(
  fontSize: 13,
);

// TextBuilder

const TextStyle textBuilderTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
);
const EdgeInsets textBuilderContainerMargin = EdgeInsets.only(
  top: 2.5,
  bottom: 2.5,
);
const double textBuilderHeight = 30;
const double textBuilderWidth = double.infinity;

// Basket Screen

const double basketItemHeight = 120;
