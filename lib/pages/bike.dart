import 'package:evam/shared/drawer.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BikePage extends StatefulWidget {
  @override
  _BikePageState createState() => _BikePageState();
}

class _BikePageState extends State<BikePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[700],
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 50,
          ),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/profile.jpg"),
                backgroundColor: Colors.grey,
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
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.grey[700], Colors.black]),
            ),
            child: Column(
              children: [
                Text(
                  "Thunder Bike",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                Divider(
                  thickness: 2,
                  endIndent: 120,
                  indent: 120,
                  color: Colors.white,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0,),
                      child: Image(
                        height: 300,
                        width: 400,
                        image: AssetImage("assets/bike.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 4),
                      margin: EdgeInsets.symmetric(horizontal: 32.0,),
                      child: LinearPercentIndicator(
                        // width: 200.0,
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 50,
                        // leading: Text("left content"),
                        trailing: Text(
                          "85%",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 2,
                          ),
                        ),
                        percent: 0.85,
                        // center: Text("20.0%"),
                        linearStrokeCap: LinearStrokeCap.butt,
                        progressColor: Colors.green,
                      ),
                    ),
                    Container(
                      child: Text(
                        "198 km left",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          // letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                // Column(
                //   children: [
                //     Container(
                //       padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
                //       margin: EdgeInsets.symmetric(horizontal: 32.0,),
                //       child: LinearPercentIndicator(
                //         width: 200.0,
                //         animation: true,
                //         animationDuration: 1000,
                //         lineHeight: 55,
                //         // leading: Text("left content"),
                //         trailing: Text(
                //           "85%",
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 20,
                //             letterSpacing: 2,
                //           ),
                //         ),
                //         percent: 0.85,
                //         // center: Text("20.0%"),
                //         linearStrokeCap: LinearStrokeCap.butt,
                //         progressColor: Colors.green,
                //       ),
                //     ),
                //     Container(
                //       child: Text(
                //         "198 km left",
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 18,
                //           // letterSpacing: 2,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                
                SizedBox(height: 16.0,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "YOUR LATEST TRIP",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            // letterSpacing: 2,
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "524",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      // letterSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "Odometer (km)",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      // letterSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // VerticalDivider(
                            //   color: Colors.grey,
                            //   thickness: 2,
                            //   indent: 8,
                            //   endIndent: 8,
                            // ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "65",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      // letterSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "Ave. Speed (km/h)",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      // letterSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // VerticalDivider(
                            //   color: Colors.white,
                            //   indent: 8,
                            //   endIndent: 8,
                            // ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "2",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      // letterSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "Charge Stops",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      // letterSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // VerticalDivider(
                            //   color: Colors.grey,
                            //   indent: 8,
                            //   endIndent: 20,
                            // ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "30 C",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      // letterSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "Temperature",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      // letterSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    )
    );
  }
}