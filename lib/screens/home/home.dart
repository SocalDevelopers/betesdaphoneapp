import 'package:flutter/material.dart';
import 'package:ministerios_betesda/components/custom_bottom_app_bar.dart';
import 'package:ministerios_betesda/screens/contact/contact_screen.dart';
import 'package:ministerios_betesda/screens/home/home_drawer.dart';
import 'package:ministerios_betesda/screens/home/home_screen.dart';
import 'package:ministerios_betesda/screens/landing_page/landing_screen.dart';

class Home extends StatefulWidget {
  static String id = 'Home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pagesToDisplay = [
    LandingScreen(),
    HomeItems(),
    ContactScreen(),
  ];
  int _selectedIndexPage = 1;
  void _selected(int index) {
    setState(() {
      _selectedIndexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text(''),
      ),
      body: _pagesToDisplay[_selectedIndexPage],
      bottomNavigationBar: CustomBottomAppBar(
        selected: _selected,
        selectedPageIndex: _selectedIndexPage,
      ),
    );
  }
}
