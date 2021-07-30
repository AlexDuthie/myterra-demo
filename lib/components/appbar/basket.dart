import 'package:flutter/material.dart';
import 'package:mobile_app/utilities/constants.dart';

// ignore: must_be_immutable
class Basket extends StatefulWidget {
  Basket({required this.basketCount});

  double basketCountOpacity = 1;
  int basketCount;

  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          widget.basketCount++;
        });
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          basketIcon,
          Opacity(
            opacity: widget.basketCountOpacity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                color: basketCountBackgroundColor,
                width: basketWidth,
                height: basketHeight,
                child: Center(
                  child: Text(
                    widget.basketCount.toString(),
                    style: basketCountTextStyle,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
