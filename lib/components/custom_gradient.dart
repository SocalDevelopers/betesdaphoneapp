import 'package:flutter/material.dart';

class GradientInset extends StatelessWidget {
  final AlignmentGeometry start;
  final AlignmentGeometry end;
  GradientInset({this.start, this.end});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: start, end: end, stops: [
        0.1,
        0.5,
        0.7,
        0.9
      ], colors: [
        Colors.black12,
        Colors.black38,
        Colors.black26,
        Colors.black12
      ])),
    );
  }
}
