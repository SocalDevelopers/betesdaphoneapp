import 'package:flutter/material.dart';
import 'package:ministerios_betesda/screens/landing_page/landing_screen.dart';
import 'package:ministerios_betesda/screens/contact/contact_screen.dart';

class CustomBottomAppBar extends StatelessWidget {
  final Function selected;
  CustomBottomAppBar({this.selected});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: selected,
        elevation: 10,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text('Menu')),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), title: Text('Contact')),
        ]);
  }
}
