import 'package:flutter/material.dart';

// Screens
const Color defaultBackgroundColour = Color.fromRGBO(206, 234, 226, 1.0);
const double backgroundSize = double.infinity;
const EdgeInsets screensBackground = EdgeInsets.only(
    left: 8,
    right: 8,
    top: 4,
    bottom: 8,
);
const backgroundDecoration = BoxDecoration(
  color: Color.fromRGBO(206, 234, 226, 1.0),
  borderRadius: BorderRadius.all(
    Radius.circular(5),
  ),
);

// Main AppBar
const Color appBarColor = Color.fromRGBO(33, 151, 114, 1.0);

// SideBar
const Color sideBarBackgroundColor = Color.fromRGBO(206, 234, 226, 1.0);
const Color sideBarInfoBackgroundColour = Color.fromRGBO(26, 108, 83, 1.0);
const Color sideAppBarColor = Color.fromRGBO(33, 151, 114, 1.0);
const double sideAppBarHeight = 55;
const EdgeInsets sideAppBarMargin = EdgeInsets.only(bottom: 8);
const BoxDecoration sideBarDecoration = BoxDecoration(
  color: sideAppBarColor,
);

// SideBar Menu
const TextStyle sideBarMenuTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: Colors.white,
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
  color: Color.fromRGBO(26, 108, 83, 1.0),
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
);
const productCardImageDecoration = BoxDecoration(
  color: Color.fromRGBO(47,72,88,1),
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
);
const double cardImageHeight = 140;
const double cardImageWidth = 140;
const cardButtonColour = Color.fromRGBO(0,56,59, 1.0);

// Card Rating
const Color ratingStarColor = Color.fromRGBO(93, 255, 231, 1.0);
const double ratingStarSize = 23;
const TextStyle cardHeaderStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);
const TextStyle cardSubHeaderStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 13,
  color: Colors.white,
);

// TextBuilder

const TextStyle textBuilderTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: Colors.white,
  decoration: TextDecoration.underline,
  decorationColor: Colors.white,
);
const EdgeInsets textBuilderContainerMargin = EdgeInsets.only(
  top: 2.5,
  bottom: 2.5,
);
const double textBuilderHeight = 30;
const double textBuilderWidth = double.infinity;