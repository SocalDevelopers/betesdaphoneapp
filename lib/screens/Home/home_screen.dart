import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ministerios_betesda/components/constants.dart';
import 'package:ministerios_betesda/components/custom_app_bar.dart';
import 'package:ministerios_betesda/screens/Home/home_items.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final inactiveColor = fadedColor;
  final activeColor = kTitleText.color;
  double transparancy = 0;
  bool selected = true;

  void colorState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar2(
        rightIcon: FontAwesomeIcons.shieldAlt,
        leftIcon: FontAwesomeIcons.th,
        height: 150,
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selected = true;
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Ministerios',
                        style: kTitleText.copyWith(
                            color: selected ? activeColor : inactiveColor),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        color: Colors.purple.withOpacity(
                            selected ? transparancy = 1 : transparancy = 0),
                        height: 4,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 45, left: 7, right: 7),
                  height: 4,
                  color: Colors.purple,
                ),
              ),
              Expanded(
                flex: 5,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selected = false;
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Servicios',
                        style: kTitleText.copyWith(
                            color: selected ? inactiveColor : activeColor),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        color: Colors.purple.withOpacity(
                            selected ? transparancy = 0 : transparancy = 1),
                        height: 4,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),

//
          SizedBox(
            height: 50,
          ),
          MyHomePage()
        ],
      ),
    );
  }
}
