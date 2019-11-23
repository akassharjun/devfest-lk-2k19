import 'package:devfest_lk_2019/bloc/user_info/user_info_bloc.dart';
import 'package:devfest_lk_2019/model/auth_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io' show Platform;

import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

import '../app_colors.dart';

class UserInfoPage extends StatefulWidget {
  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  final UserInfoBloc userInfoBloc = UserInfoBloc();
  ScreenScaler _screenScaler;
  var _controller = TextEditingController();

  @override
  void initState() {
    userInfoBloc.add(RetrieveUserDataUserInfoEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _screenScaler = ScreenScaler()..init(context);

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: AppColors.BORDER,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  new BoxShadow(
                    color: AppColors.BACKGROUND,
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: IconButton(
                icon: Platform.isAndroid
                    ? Icon(Icons.arrow_back)
                    : Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          BlocBuilder(
            bloc: userInfoBloc,
            builder: (BuildContext context, UserInfoState state) {
              if (state is InitialUserInfoState) {
                userInfoBloc.add(RetrieveUserDataUserInfoEvent());
                return Center(child: CircularProgressIndicator());
              }
              if (state is NetworkBusyUserInfoState) {
                return Center(child: Column(children: <Widget>[
                  CircularProgressIndicator(),
                  Text("Sending Feedback")
                ],));
              }
              if (state is FeedbackMessageSentUserInfoState) {
                return Center(child: Container(
                  height: _screenScaler.getHeight(80),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                    Icon(Icons.check, size: _screenScaler.getFullScreen(20), color : Colors.green),
                    SizedBox(height: _screenScaler.getHeight(2)),
                    Text("Feedback Sent!", style : TextStyle(fontSize: _screenScaler.getTextSize(11),),)
                  ],),
                ),);
              }
              if (state is UserDataRetrievedUserInfoState) {
                return _buildUserInfo(state.user);
              }
              return Container();
            },
          ),
        ],
      ),
    ));
  }

  Widget _buildUserInfo(User user) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.bottomCenter,
              height: _screenScaler.getHeight(20),
              width: double.infinity,
              padding: const EdgeInsets.all(44.0),
              child: Image.asset('assets/images/devfest_logo.png'),
            ),
            SizedBox(height: _screenScaler.getHeight(2)),
            Text(
              "Your Information",
              style: TextStyle(
                fontSize: _screenScaler.getTextSize(12),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: _screenScaler.getHeight(1.5)),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: _screenScaler.getTextSize(10),
              ),
            ),
            SizedBox(height: _screenScaler.getHeight(0.5)),
            Text(
              user.name,
              style: TextStyle(
                fontSize: _screenScaler.getTextSize(12),
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: _screenScaler.getHeight(1)),
            Text(
              "EMAIL",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: _screenScaler.getTextSize(10),
              ),
            ),
            SizedBox(height: _screenScaler.getHeight(0.5)),
            Text(
              user.email,
              style: TextStyle(
                fontSize: _screenScaler.getTextSize(12),
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: _screenScaler.getHeight(1)),
            Text(
              "NIC NUMBER",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: _screenScaler.getTextSize(10),
              ),
            ),
            SizedBox(height: _screenScaler.getHeight(0.5)),
            Text(
              user.nic.toString(),
              style: TextStyle(
                fontSize: _screenScaler.getTextSize(12),
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: _screenScaler.getHeight(2)),
            Text(
              "Leave a feedback",
              style: TextStyle(
                fontSize: _screenScaler.getTextSize(12),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: _screenScaler.getHeight(1)),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Enter Feedback\n\n\n",
                hintMaxLines: 10,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.BORDER,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: _screenScaler.getHeight(1.5)),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  userInfoBloc.add(
                    SendFeedbackUserInfoEvent(
                      user.id.toString(),
                      _controller.text,
                    ),
                  );
                },
                child: Text(
                  "SEND",
                  style: TextStyle(
                    fontSize: _screenScaler.getTextSize(10.5),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    userInfoBloc.close();
    _controller.dispose();
    super.dispose();
  }
}
