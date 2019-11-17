import 'package:flutter/material.dart';
import 'package:ministerios_betesda/screens/home/home_screen.dart';
import 'package:ministerios_betesda/screens/landing_page/landing_screen.dart';
import 'package:ministerios_betesda/loading_screen.dart';
import 'screens/Home/home.dart';

void main() => runApp(Betesda());

class Betesda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff1c243d),
        accentColor: Colors.white,
        primaryIconTheme: IconThemeData(opacity: .2),
        canvasColor: Color(0xff1D253F),
        backgroundColor: Color(0xff1D253F),
        scaffoldBackgroundColor: Color(0xff1c243d),
        appBarTheme: AppBarTheme(color: Color(0xff1c243d)),
        bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff1c243d)),
      ),
      title: 'Betesda App',
      initialRoute: LoadingScreen.id,
      routes: {
        Home.id: (context) => Home(),
        HomeItems.id: (context) => HomeItems(),
        LandingScreen.id: (context) => LandingScreen(),
        LoadingScreen.id: (context) => LoadingScreen(),
      },
    );
  }
}
