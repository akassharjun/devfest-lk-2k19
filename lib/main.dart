import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

import 'app_colors.dart';
import 'session_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.BACKGROUND,
        brightness: Brightness.dark,
        fontFamily: 'ProductSans',
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler _screenScaler = ScreenScaler()..init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Agenda",
          style: TextStyle(
            fontSize: _screenScaler.getTextSize(12),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(16.0),
                padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.BORDER,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 16.0, 16.0, 16.0),
//                      color: Colors.green,
                      child: Text(
                        "10:00\nAM",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: _screenScaler.getTextSize(10),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Kotlin Multiplatform for Mobile Development",
                            style: TextStyle(
                              fontSize: _screenScaler.getTextSize(11),
                            ),
                          ),
                          Divider(
                            height: 6,
                            color: Colors.transparent,
                          ),
                          Text(
                            "Conference hall",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: _screenScaler.getTextSize(10),
                            ),
                          ),
                          Divider(height: 20,),
                          Row(children: <Widget>[
                            Container(height: 8, width: 8, decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(100)),),
                            SizedBox(width: _screenScaler.getWidth(1),),
                            Text(
                              "Kotlin",
                              style: TextStyle(
                                fontSize: _screenScaler.getTextSize(9),
                              ),
                            ),
                          ],)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
