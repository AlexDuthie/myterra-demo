import 'package:flutter/material.dart';
import 'package:mobile_app/components/index.dart';

//TODO: Design UI for this screen

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_return),
        ),
      ),
      //TODO: Screen will eventually show contents of basket
      body: CustomScrollView(
        slivers: [
          ProductCard(),
        ],
      ),
    );
  }
}
