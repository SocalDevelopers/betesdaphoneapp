import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ministerios_betesda/components/constants.dart';
import 'package:ministerios_betesda/components/custom_app_bar.dart';

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
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
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
          ),
//          Container(
//            margin: EdgeInsets.only(left: 20, right: 20),
//            child: Row(
//              children: <Widget>[
//                Expanded(
//                  child: Container(
//                    margin: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
//                    height: 70,
//                    decoration: BoxDecoration(
//                      color: actionBoxes,
//                      borderRadius: BorderRadius.circular(15),
//                    ),
//                  ),
//                ),
//                Expanded(
//                  child: Container(
//                    height: 70,
//                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//                    decoration: BoxDecoration(
//                      color: actionBoxes,
//                      borderRadius: BorderRadius.circular(15),
//                    ),
//                  ),
//                ),
//                Expanded(
//                  child: Container(
//                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//                    height: 70,
//                    decoration: BoxDecoration(
//                      color: actionBoxes,
//                      borderRadius: BorderRadius.circular(15),
//                    ),
//                  ),
//                ),
//                Expanded(
//                  child: Container(
//                    padding: EdgeInsets.only(top: 25),
//                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//                    height: 70,
//                    decoration: BoxDecoration(
//                      color: actionBoxes,
//                      borderRadius: BorderRadius.circular(15),
//                    ),
//                    child: Text(
//                      '4',
//                      textAlign: TextAlign.center,
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),

          SizedBox(
            height: 50,
          ),
          CarouselSlider(
            items: <Widget>[
              Image.network(
                  'https://images.unsplash.com/photo-1570639215351-72aafe575704?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
              Image.network(
                  'https://images.unsplash.com/photo-1569199414332-49d5ae0d5fef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
              Image.network(
                  'https://images.unsplash.com/photo-1569576231685-8a0bb772d2f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
            ],
          ),
        ],
      ),
    );
  }
}
//
//class SideMenu extends StatelessWidget {
//  final GlobalKey<InnerDrawerState> _innerDrawerKey =
//      GlobalKey<InnerDrawerState>();
//}
//
//@override
//Widget build(BuildContext context) {
//  return InnerDrawer(
//      key: _innerDrawerKey,
//      onTapClose: true, // default false
//      swipe: true, // default true
//      colorTransition: Color.red, // default Color.black54
//      innerDrawerCallback: (a) => print(a), // return bool
//      leftOffset: 0.6, // default 0.4
//      rightOffset: 0.6, // default 0.4
//      leftScale: 0.9, // default 1
//      rightScale: 0.9, // default 1
//      borderRadius: 50, // default 0
//      leftAnimationType: InnerDrawerAnimation.static, // default static
//      rightAnimationType: InnerDrawerAnimation.quadratic,
//
//      //when a pointer that is in contact with the screen and moves to the right or left
//      onDragUpdate: (double val, InnerDrawerDirection direction) {
//        // return values between 1 and 0
//        print(val);
//        // check if the swipe is to the right or to the left
//        print(direction == InnerDraweDirection.start);
//      },
//      innerDrawerCallback: (a) =>
//          print(a), // return  true (open) or false (close)
//      leftChild: Container(), // required if rightChild is not set
//      rightChild: Container(), // required if leftChild is not set
//
//      //  A Scaffold is generally used but you are free to use other widgets
//      // Note: use "automaticallyImplyLeading: false" if you do not personalize "leading" of Bar
//      scaffold: Scaffold(
//        appBar: AppBar(automaticallyImplyLeading: false),
//      ));
//}
//
//void _toggle() {
//  _innerDrawerKey.currentState.toggle(
//      // direction is optional
//      // if not set, the last direction will be used
//      //InnerDrawerDirection.start OR InnerDrawerDirection.end
//      direction: InnerDrawerDirection.end);
//}
