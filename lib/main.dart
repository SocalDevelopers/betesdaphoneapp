import 'package:flutter/material.dart';
import 'package:ministerios_betesda/screens/landing_page/loading_screen.dart';

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
      home: LoadingScreen(),
    );
  }
}
