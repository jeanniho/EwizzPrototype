import 'package:evam/pages/wrapper.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String errorMessage = ""; //display an error messsage
  final _formKey = GlobalKey<FormState>();
  final _userName = TextEditingController();
  final _password = TextEditingController();

  bool remember = false; //check if remember me is checked

  void rememberMeSwitch(bool value) {
    if (remember == false) {
      setState(() {
        remember = true;
      });
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        remember = false;
      });
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.grey[800]]),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 32,
                    ),
                    child: Image(
                      image: AssetImage("assets/logo.png"),
                      // height: 100,
                      // width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Username:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _userName,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Enter username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.white, width: 2.0),
                          // ),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide:
                          //       BorderSide(color: Colors.pinkAccent, width: 2.0),
                          // ),
                        ),
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Please provide a valid user name";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    Text(
                      "Password:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _password,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.white, width: 4.0),
                          // ),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide:
                          //       BorderSide(color: Colors.pinkAccent, width: 2.0),
                          // ),
                        ),
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Please provide a valid password";
                          }
                          if (val.length < 6) {
                            return "Password must be at least 6 characters long";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Remember me",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Transform.scale(
                      scale: 1.5,
                      child: Switch(
                        onChanged: rememberMeSwitch,
                        value: remember,
                        activeColor: Colors.white,
                        activeTrackColor: Colors.red[900],
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                FlatButton(
                  color: Colors.red[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    // side: BorderSide(color: Colors.orange)
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wrapper()),
                      );
                    } else {
                      setState(() {
                        errorMessage = "Unable to sign in. Provide correct login details or create a new account.";
                      });
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: 5.0,),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(16),
                    child: Text(
                      errorMessage,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14.0,
                      ),
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

  @override
  void dispose() {
    _password.dispose();
    _userName.dispose();
    super.dispose();
  }
}
