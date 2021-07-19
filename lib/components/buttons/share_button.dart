import 'package:flutter/material.dart';
import 'package:mobile_app/components/appbar/main_appbar.dart';

class ShareButton extends StatelessWidget {
  final String valueChoose = 'value';
  final List listItems = ["Facebook", "Instagram", "Twitter"];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                (context),
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('Share to Social Media'),
                      centerTitle: true,
                    ),
                    body: Center(
                      child: Text(
                        'Social Media Options Will Go Here',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            icon: Icon(Icons.share),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
