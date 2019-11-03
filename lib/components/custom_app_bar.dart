import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  final String subTitle;
  final IconData leftIcon;
  final IconData rightIcon;

  MyCustomAppBar2(
      {this.title = 'betesda',
      this.subTitle = 'Casa de misericordia',
      this.height,
      this.leftIcon,
      this.rightIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 90, bottom: 10),
//      decoration: BoxDecoration(
//        color: Colors.blueGrey,
//        borderRadius: BorderRadius.only(
//          bottomLeft: Radius.circular(30),
//          bottomRight: Radius.circular(30),
//        ),
//      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {},
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
                subTitle,
                style: kSubtitleText,
              ),
            ],
          ),
          Icon(
            rightIcon,
            color: fadedColor,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
