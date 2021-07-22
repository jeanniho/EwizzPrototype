import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class PowerPage extends StatefulWidget {
  @override
  _PowerPageState createState() => _PowerPageState();
}

class _PowerPageState extends State<PowerPage> {
  List<charts.Series> seriesList;
  static List<charts.Series<BatteryStatus, String>> _createData() {
    final batteryStatusData = [
      BatteryStatus("SOC", 85),
      BatteryStatus("SOH", 98),
      BatteryStatus("CP", 62),
    ];
    return [
      charts.Series<BatteryStatus, String>(
        id: "Battery Status",
        domainFn: (BatteryStatus batteryStatus, _) => batteryStatus.name,
        measureFn: (BatteryStatus batteryStatus, _) => batteryStatus.percentage,
        data: batteryStatusData,
        fillColorFn: (BatteryStatus batteryStatus, _) {
          return charts.MaterialPalette.green.shadeDefault;
        },
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    seriesList = _createData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: Text(
                    "POWER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                  endIndent: 140,
                  indent: 140,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SOC 4.08kW | 4.8kW",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "PACK VOLTAGE: 72.09V",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "PACK CURRENT: 56.67A",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 10.0,
                          percent: 0.5,
                          footer: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              "NOT CHARGING",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                // letterSpacing: 2,
                              ),
                            ),
                          ),
                          center: Icon(
                            Icons.battery_alert,
                            size: 50.0,
                            color: Colors.orange,
                          ),
                          backgroundColor: Colors.grey,
                          progressColor: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
                // LineChart(
                //   LineChartData(lineBarsData: [
                //     LineChartBarData(isCurved: true, colors: [
                //       Colors.red
                //     ], spots: [
                //       FlSpot(0, 0),
                //       FlSpot(2, 1),
                //       FlSpot(3, 3),
                //       FlSpot(5, 4),
                //       FlSpot(6, 2),
                //     ]),
                //     LineChartBarData(isCurved: true, colors: [
                //       Colors.blue
                //     ], spots: [
                //       FlSpot(0, 0),
                //       FlSpot(1, 2),
                //       FlSpot(3, 3),
                //       FlSpot(4, 5),
                //       FlSpot(2, 6),
                //     ]),
                //   ]),
                // ),
                Expanded(
                  // height: 300,
                  child: charts.BarChart(
                    seriesList,
                    animate: true,
                    vertical: false,
                  ),
                ),
                // BarChart(
                //   BarChartData(
                //     barGroups: [
                //       BarChartGroupData(
                //         x: 85,
                //         barRods: [
                //           BarChartRodData(
                //             y: 85,
                //           )
                //         ],
                //       ),
                //       BarChartGroupData(
                //         x: 98,
                //         barRods: [
                //           BarChartRodData(
                //             y: 98,
                //           )
                //         ],
                //       ),
                //       BarChartGroupData(
                //         x: 62,
                //         barRods: [
                //           BarChartRodData(
                //             y: 62,
                //           )
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                Expanded(
                  child: Container(
                    color: Color(0x707070),
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      children: [
                        ListTile(
                          leading: Image(
                            image: AssetImage("assets/circle.png"),
                          ),
                          title: Text(
                            "State of Change",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          trailing: Text(
                            "4.08 kW",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Image(
                            image: AssetImage("assets/circle.png"),
                          ),
                          title: Text(
                            "State of Heath",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          trailing: Text(
                            "5.2 kW",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Image(
                            image: AssetImage("assets/circle.png"),
                          ),
                          title: Text(
                            "Charger Power (CP)",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          trailing: Text(
                            "750Wh",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Image(
                            image: AssetImage("assets/circle.png"),
                          ),
                          title: Text(
                            "Temperature",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          trailing: Text(
                            "30 C",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BatteryStatus {
  final String name;
  final int percentage;

  BatteryStatus(this.name, this.percentage);
}
