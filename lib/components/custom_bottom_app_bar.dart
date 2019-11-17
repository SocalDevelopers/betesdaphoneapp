import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ministerios_betesda/components/constants.dart';
import 'package:ministerios_betesda/screens/landing_page/landing_screen.dart';
import 'package:ministerios_betesda/screens/contact/contact_screen.dart';

class CustomBottomAppBar extends StatelessWidget {
  final Function selected;
  final int selectedPageIndex;
  CustomBottomAppBar({this.selected, this.selectedPageIndex});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: selected,
        elevation: 10,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedFontSize: 12,
        unselectedIconTheme: Theme.of(context)
            .accentIconTheme
            .copyWith(color: Colors.white.withOpacity(.3)),
        currentIndex: selectedPageIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Inicio')),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu), title: Text('Opciones')),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), title: Text('Contacto')),
        ]);
  }
}
