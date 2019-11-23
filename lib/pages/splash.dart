import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var isLoggedIn = true;

  checkIfIsLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isLoggedIn = prefs.get('isLoggedIn') == null ? false : true;
    });
  }

  @override
  void initState() {
    super.initState();
    checkIfIsLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    ScreenScaler _screenScaler = ScreenScaler()..init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(64.0),
            child: Image.asset('assets/images/devfest_logo.png'),
          ),
          SizedBox(height: _screenScaler.getHeight(10),),
          isLoggedIn ? CircularProgressIndicator() : RaisedButton(onPressed: () {}, child: Text("Log In"),),
        ],
      ),
    );
  }
}
