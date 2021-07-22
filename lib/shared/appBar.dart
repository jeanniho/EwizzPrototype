import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
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
    );
  }
}
