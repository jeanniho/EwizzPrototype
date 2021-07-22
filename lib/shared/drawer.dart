import 'package:evam/pages/navigation.dart';
import 'package:evam/pages/bike.dart';
import 'package:evam/pages/boat.dart';
import 'package:evam/pages/login.dart';
import 'package:evam/pages/power.dart';
import 'package:evam/pages/settings.dart';
import 'package:evam/pages/ups.dart';
import 'package:evam/pages/wrapper.dart';
import 'package:flutter/material.dart';

class SignedInDrawer extends StatefulWidget {
  @override
  _SignedInDrawerState createState() => _SignedInDrawerState();
}

class _SignedInDrawerState extends State<SignedInDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: InkWell(
              onTap: () async {
                final List<Widget> _pages = [
                  BikePage(),
                  PowerPage(),
                  NavigationPage(),
                  SettingsPage(),
                ];
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Wrapper(pages: _pages,)),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/bike.png"),
                  backgroundColor: Colors.grey,
                ),
                title: Text(
                  'Bike',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: InkWell(
              onTap: () async {
                final List<Widget> _pages = [
                  UpsPage(),
                  PowerPage(),
                  NavigationPage(),
                  SettingsPage(),
                ];
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Wrapper(pages: _pages,)),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/ups.png"),
                  backgroundColor: Colors.grey,
                ), 
                title: Text(
                  'UPS',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: InkWell(
              onTap: () async {
                final List<Widget> _pages = [
                  BoatPage(),
                  PowerPage(),
                  NavigationPage(),
                  SettingsPage(),
                ];
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Wrapper(pages: _pages,)),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/boat.png"),
                  backgroundColor: Colors.grey,
                ), 
                title: Text(
                  'Boat',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                )
                )
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(
              horizontal: 50.0,
            ),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'LOGOUT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  // letterSpacing: 2,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onPressed: () async {
                await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
              },
            ),
          ),
        ],
      ),
    );
  }
}
