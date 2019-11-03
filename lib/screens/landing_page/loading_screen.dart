import 'package:flutter/material.dart';
import 'package:ministerios_betesda/components/custom_app_bar.dart';
import 'package:ministerios_betesda/screens/Home/home_screen.dart';
import 'package:ministerios_betesda/screens/landing_page/landing_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
