import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/utilities/data/products.dart';
import 'package:mobile_app/models/index.dart';
import 'package:mobile_app/utilities/index.dart';
import 'package:mobile_app/components/index.dart';

class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
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
                    child: FutureBuilder<dynamic>(
                        future: getProductData(),
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
                                    CardTitles(),
                                    CardRating(),
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
                                        bulbRating: rating,
                                      ),
                                      ShareButton(),
                                    ],
                                  ),
                                )
                              ],
                            );
                        })));
          },
          childCount: (3),
        ),
      ),
    );
  }
}