import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/components/index.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  MainAppBar({required this.appBarColor});

  final Size preferredSize = Size.fromHeight(60);
  final Color appBarColor;
  static int basketCount = 0;

  static int getBasketCount(){
    return basketCount;
  }

  static void setBasketCount() {
    basketCount++;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appBarColor,
            leading: MenuIconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            title: MainSearchBar(),
            actions: [
              Basket(basketCount: MainAppBar.getBasketCount(),),
              SizedBox(width: 3),
            ],
          )
        ],
      ),
    );
  }
}

