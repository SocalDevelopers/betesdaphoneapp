import 'package:flutter/material.dart';

class LogoStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(
              'images/logo.PNG',
              color: Colors.white.withOpacity(.5),
              scale: 4.5,
            ),
          ),
          Container(
            child: Image.asset(
              'images/logo.PNG',
              scale: 4.45,
            ),
          ),
        ],
      ),
    );
  }
}
