import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app/models/index.dart';
import 'package:mobile_app/utilities/index.dart';
import 'package:mobile_app/components/index.dart';

//TODO: learn how to do this properly

class BasketItem extends StatefulWidget {
  @override
  _BasketItemState createState() => _BasketItemState();
}

class _BasketItemState extends State<BasketItem> {
  List<Category> categories = Categories.getMethodCategories();
  List<Product> products = Products.getProducts();
  String rating = 'A';
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 10),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              margin: productCardMargin,
              height: basketItemHeight,
              decoration: productCardBoxDecoration,
              child: Row(
                children: [
                  CardImage(
                    imageURL:
                        'https://images.pexels.com/photos/4112726/pexels-photo-4112726.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
                  ),
                  SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardTitles(
                        header: 'Product Name',
                        subHeader: 'In Stock',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                      Container(
                        width: 150,
                        child: Column(
                          children: [
                            Text('QUANTITY'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      backgroundColor: Colors.black,
                                      minimumSize: Size(20, 20)
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        quantity--;
                                        if(quantity < 0) {
                                          quantity = 0;
                                        }
                                      });
                                    },
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(quantity.toString(), style: TextStyle(fontSize: 30),),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        backgroundColor: Colors.black,
                                        minimumSize: Size(20, 20)
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        quantity++;
                                        if(quantity >= 10) {
                                          quantity = 10;
                                        }
                                      });
                                    },
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        BulbRating(
                          bulbRating: rating,
                        ),
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
