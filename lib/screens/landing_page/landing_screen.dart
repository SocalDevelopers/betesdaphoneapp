import 'package:flutter/material.dart';
import 'package:ministerios_betesda/components/constants.dart';
import 'package:ministerios_betesda/components/logo_stack.dart';
import 'package:ministerios_betesda/screens/landing_page/landing_page_description.dart';
import 'package:ministerios_betesda/screens/landing_page/landing_page_info.dart';

class LandingScreen extends StatelessWidget {
  static const String id = 'LandingScreen';
  final LandingPageInfo info = LandingPageInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(),
          ),
          LogoStack(),
          Expanded(
            flex: 3,
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: info.landingInfo.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return LandingPageDescription(
                            title: info.landingInfo[index].title.toUpperCase(),
                            subTitle:
                                info.landingInfo[index].subTitle.toLowerCase(),
                          );
                        }),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            info.landingInfo[index].title.toUpperCase(),
                            style: kTitleText,
                          ),
                        ),
                        Container(
                          child: Text(
                              info.landingInfo[index].subTitle.toLowerCase()),
                        ),
                      ],
                    ),
                  ),
                );
              },
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
