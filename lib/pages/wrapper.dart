import 'package:evam/pages/navigation.dart';
import 'package:evam/pages/bike.dart';
import 'package:evam/pages/power.dart';
import 'package:evam/pages/settings.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  final pages;

  const Wrapper({Key key, this.pages}) : super(key: key);
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentPage = 0;

  List<Widget> _pages = [
    BikePage(),
    PowerPage(),
    NavigationPage(),
    SettingsPage(),
  ];
  void onTappedItem(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    final List<Widget> test = widget.pages;
    if (test==null || test.isEmpty) {
      _pages = [
        BikePage(),
        PowerPage(),
        NavigationPage(),
        SettingsPage(),
      ];
    } else{
      _pages = test;
    }
  }

  @override
  Widget build(BuildContext context) {
    // final List<Widget> test = widget.pages;
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30.0,
        onTap: onTappedItem,
        currentIndex: _currentPage,
        // selectedFontSize: 50,
        // selectedIconTheme: IconThemeData(
        //   color: Colors.red,
        //   size: 20,
        // ),
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/home.png"),
            ),
            activeIcon: Image(
              color: Colors.red,
              image: AssetImage("assets/home.png"),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/flash.png"),
            ),
            activeIcon: Image(
              image: AssetImage("assets/flash.png"),
              color: Colors.red,
            ),
            label: "Power",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Image(
              image: AssetImage("assets/navigation.png"),
            ),
            activeIcon: Image(
              image: AssetImage("assets/navigation.png"),
              color: Colors.red,
            ),
            label: "Arrow",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Image(
              image: AssetImage("assets/settings.png"),
            ),
            activeIcon: Image(
              image: AssetImage("assets/settings.png"),
              color: Colors.red,
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
