import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool airplane = false;
  bool wifi = false;
  bool bluetooth = false;
  bool cloudService = false;
  bool charger = false;

  void airplaneModeSwitch(bool value) {
    if (airplane == false) {
      setState(() {
        airplane = true;
        wifi = false;
        bluetooth = false;
        cloudService = false;
        charger = false;
      });
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        airplane = false;
      });
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  void wifiSwitch(bool value) {
    if (wifi == false && airplane == false) {
      setState(() {
        wifi = true;
      });
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        wifi = false;
      });
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  void bluetoothSwitch(bool value) {
    if (bluetooth == false && airplane == false) {
      setState(() {
        bluetooth = true;
      });
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        bluetooth = false;
      });
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  void cloudServiceSwitch(bool value) {
    if (cloudService == false && airplane == false) {
      setState(() {
        cloudService = true;
      });
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        cloudService = false;
      });
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  void chargerSwitch(bool value) {
    if (charger == false && airplane == false) {
      setState(() {
        charger = true;
      });
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        charger = false;
      });
      // Put your code here which you want to execute on Switch OFF event.
    }
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
                    "CONFIGURATION",
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
                  endIndent: 120,
                  indent: 120,
                  color: Colors.white,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(32, 16, 16, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Airplane Mode",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Transform.scale(
                        scale: 1.5,
                        child: Switch(
                          onChanged: airplaneModeSwitch,
                          value: airplane,
                          activeColor: Colors.white,
                          activeTrackColor: Colors.orange,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 32),
                        child: ListTile(
                          leading: Image(
                            height: 100,
                            width: 100,
                            image: AssetImage("assets/wifi.png"),
                            fit: BoxFit.contain,
                          ),
                          title: Text(
                            'Wifi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          trailing: Transform.scale(
                            scale: 1.5,
                            child: Switch(
                              onChanged: wifiSwitch,
                              value: wifi,
                              activeColor: Colors.white,
                              activeTrackColor: Colors.red,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 32),
                        child: ListTile(
                          leading: Image(
                            height: 100,
                            width: 100,
                            image: AssetImage("assets/bluetooth.png"),
                            fit: BoxFit.contain,
                          ),
                          title: Text(
                            'Bluetooth',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          trailing: Transform.scale(
                            scale: 1.5,
                            child: Switch(
                              onChanged: bluetoothSwitch,
                              value: bluetooth,
                              activeColor: Colors.white,
                              activeTrackColor: Colors.red,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 32),
                        child: ListTile(
                          leading: Image(
                            height: 100,
                            width: 100,
                            image: AssetImage("assets/aws.png"),
                            fit: BoxFit.contain,
                          ),
                          title: Text(
                            'Cloud service',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          trailing: Transform.scale(
                            scale: 1.5,
                            child: Switch(
                              onChanged: cloudServiceSwitch,
                              value: cloudService,
                              activeColor: Colors.white,
                              activeTrackColor: Colors.red,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 32),
                        child: ListTile(
                          leading: Image(
                            height: 100,
                            width: 100,
                            image: AssetImage("assets/charger.png"),
                            fit: BoxFit.contain,
                          ),
                          title: Text(
                            'Charger',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          trailing: Transform.scale(
                            scale: 1.5,
                            child: Switch(
                              onChanged: chargerSwitch,
                              value: charger,
                              activeColor: Colors.white,
                              activeTrackColor: Colors.red,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
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
