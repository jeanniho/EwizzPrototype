import 'package:evam/shared/drawer.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        iconTheme: IconThemeData(
          color: Colors.white,
          // size: 32,
        ),
        elevation: 0,
        title: Text(
          "Navigation page",
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ClipOval(
          //     child: Image(
          //       height: 200,
          //       width: 100,
          //       fit: BoxFit.fill,
          //       alignment: Alignment.center,
          //       image: AssetImage("assets/profile.jpg"),
          //     ),
          //   ),
          // )
        ],
      ),
      drawer: SignedInDrawer(),
    );
  }
}
