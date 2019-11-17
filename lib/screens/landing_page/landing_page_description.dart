import 'package:flutter/material.dart';

class LandingPageDescription extends StatelessWidget {
  final String imageurl;
  final String title;
  final String subTitle;
  LandingPageDescription({this.imageurl, this.title, this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(title),
                  Text(subTitle),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
