import 'package:flutter/material.dart';
import 'package:ministerios_betesda/components/constants.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(
              'Ministerios Betesda',
              style: kTitleText,
            ),
            Text(
              'Casa de Misericordia',
              textAlign: TextAlign.center,
              style: kSubtitleText,
            ),
            spaceBetween,
            Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/logo.PNG',
                    color: Colors.white.withOpacity(.5),
                    scale: 3.5,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'images/logo.PNG',
                    scale: 3.45,
                  ),
                ),
              ],
            ),
            spaceBetween,
            Text(
              'Eventos'.toUpperCase(),
              style: kTitleText,
            ),
            Text(
              'Casa de Misericordia',
              textAlign: TextAlign.center,
              style: kSubtitleText,
            ),
            spaceBetween,
            Text(
              'Ministerios'.toUpperCase(),
              textAlign: TextAlign.center,
              style: kTitleText,
            ),
            Text(
              'Casa de Misericordia',
              textAlign: TextAlign.center,
              style: kSubtitleText,
            ),
            spaceBetween,
            Text(
              'Sermones'.toUpperCase(),
              textAlign: TextAlign.center,
              style: kTitleText,
            ),
            Text(
              'Casa de Misericordia',
              textAlign: TextAlign.center,
              style: kSubtitleText,
            ),
          ],
        ),
      ],
    );
  }
}
