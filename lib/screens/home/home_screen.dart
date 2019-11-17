import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ministerios_betesda/components/custom_bottom_app_bar.dart';
import 'package:ministerios_betesda/components/constants.dart';
import 'package:ministerios_betesda/components/custom_app_bar.dart';
import 'package:ministerios_betesda/screens/Ministerios/ministerios_slider.dart';
import 'package:ministerios_betesda/screens/home/home_drawer.dart';
import 'package:ministerios_betesda/screens/landing_page/landing_screen.dart';
import 'package:ministerios_betesda/components/custom_gradient.dart';

class HomeItems extends StatefulWidget {
  static const String id = 'HomeItems';
  @override
  _HomeItemsState createState() => _HomeItemsState();
}

class _HomeItemsState extends State<HomeItems> {
  final inactiveColor = fadedColor;
  final activeColor = kTitleText.color;
  double transparancy = 0;
  bool selected = true;

  void colorState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(),
      ),
      appBar: MyCustomAppBar2(
        leftTap: () {
          Navigator.pushNamed(context, LandingScreen.id);
        },
        rightIcon: FontAwesomeIcons.shieldAlt,
        leftIcon: FontAwesomeIcons.th,
        height: 150,
      ),
      body: Column(
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
                        color: Colors.green.withOpacity(
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
                  color: Colors.green,
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
                        color: Colors.green.withOpacity(
                            selected ? transparancy = 0 : transparancy = 1),
                        height: 4,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          GradientInset(
            start: Alignment.bottomRight,
            end: Alignment.topRight,
          ),
          Expanded(
            flex: 3,
            child: ListView(
              children: <Widget>[
                MinisteriosSlider(),
              ],
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
            ),
          ),
          GradientInset(
            start: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
            ),
          ),
        ],
      ),
    );
  }
}
