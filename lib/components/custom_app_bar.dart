import 'package:flutter/material.dart';
import 'constants.dart';

class MyCustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  final String subTitle;
  final IconData leftIcon;
  final IconData rightIcon;
  final Function leftTap;
  final Function rightTap;

  MyCustomAppBar2(
      {this.title = 'betesda',
      this.subTitle = 'Casa de misericordia',
      this.height,
      this.leftIcon,
      this.rightIcon,
      this.leftTap,
      this.rightTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: leftTap,
            child: Icon(
              leftIcon,
              color: fadedColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title.toUpperCase(),
                style: kTitleText,
              ),
              Text(
                subTitle.toUpperCase(),
                style: kSubtitleText,
              ),
            ],
          ),
          InkWell(
            onTap: rightTap,
            child: Icon(
              rightIcon,
              color: fadedColor,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
