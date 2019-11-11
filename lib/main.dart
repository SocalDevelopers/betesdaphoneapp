import 'package:flutter/material.dart';
import 'package:ministerios_betesda/screens/landing_page/landing_screen.dart';
import 'package:ministerios_betesda/loading_screen.dart';
import 'screens/Home/home_screen.dart';

void main() => runApp(Betesda());

class Betesda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryIconTheme: IconThemeData(opacity: .2),
          backgroundColor: Color(0xff1D253F),
          scaffoldBackgroundColor: Color(0xff1c243d)),
      title: 'Betesda App',
      initialRoute: LoadingScreen.id,
      routes: {
        Home.id: (context) => Home(),
        LandingScreen.id: (context) => LandingScreen(),
        LoadingScreen.id: (context) => LoadingScreen(),
      },
    );
  }
}
