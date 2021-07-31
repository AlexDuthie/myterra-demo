import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:MyTerra/utilities/data/products.dart';
import 'package:MyTerra/models/index.dart';
import 'package:MyTerra/utilities/index.dart';
import 'package:MyTerra/components/index.dart';



class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  Future<List> products = getProductData();
  List<Category> categories = Categories.getMethodCategories();
  bool _loadingCheck = true;
  String rating = 'A';

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2500), () {
      setState(() {
        _loadingCheck = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 10),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return _loadingCheck
                ? LoadingCircle()
                : Container(
                margin: productCardMargin,
                height: productCardHeight,
                decoration: productCardBoxDecoration,
                child: Container(
                    child: FutureBuilder<List>(
                        future: products,
                        builder: (context, snapshot) {
                          if (snapshot.data == null) {
                            return Container(
                              child: LoadingCircle(),
                            );
                          } else
                            return Row(
                              children: [
                                CardImage(
                                    imageURL:
                                    snapshot.data![index].imgName
                                ),
                                SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    CardTitles(title: snapshot.data![index].productName, description: snapshot.data![index].productDescription),
                                    CardRating(starsrating: snapshot.data![index].stars), //TODO Make stars work
                                    SizedBox(height: 4),
                                    CardButton(
                                      label: 'add to basket',
                                      onPressed: () {
                                        setState(() {
                                          MainAppBar.setBasketCount();
                                        });
                                      },
                                    ),
                                    CardButton(
                                      label: 'compare',
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    children: [
                                      BulbRating(
                                        bulbRating: snapshot.data![index].rating,
                                      ),
                                      ShareButton(),
                                    ],
                                  ),
                                )
                              ],
                            );
                        })));
          },
          childCount: (10), //TODO Currently Manually creating list length. In future Update this to do it automatically.
        ),
      ),
    );
  }
}