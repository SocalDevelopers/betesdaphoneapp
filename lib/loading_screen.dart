import 'package:flutter/material.dart';
import 'package:ministerios_betesda/screens/Home/home_screen.dart';

class LoadingScreen extends StatefulWidget {
  static const String id = 'LoadingScreen';
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
