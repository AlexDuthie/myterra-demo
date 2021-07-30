import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/models/index.dart';
import 'package:mobile_app/utilities/index.dart';
import 'package:mobile_app/components/index.dart';

class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  List<Category> categories = Categories.getMethodCategories();
  List<Product> products = Products.getProducts();
  bool _loadingCheck = true;
  String rating = 'A';

  @override
  // ignore: must_call_super
  void initState() {
    getProducts();
  }

  getProducts() async {
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
                    child: Row(
                      children: [
                        CardImage(
                          imageURL:
                              'https://images.pexels.com/photos/4112726/pexels-photo-4112726.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardTitles(),
                            CardRating(),
                            SizedBox(height: 4),
                            CardButton(label: 'add to basket', onPressed: (){
                              setState(() {
                                MainAppBar.setBasketCount();
                              });
                            },),
                            CardButton(label: 'compare', onPressed: (){},)
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              BulbRating(bulbRating: rating,),
                              ShareButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
          },
          childCount: (products.length),
        ),
      ),
    );
  }
}
