import 'package:devfest_lk_2019/bloc/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  static ScreenScaler _screenScaler;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginBloc loginBloc = new LoginBloc();
  TextEditingController emailController = new TextEditingController();
  TextEditingController ticketNumberController = new TextEditingController();
  ScreenScaler _screenScaler;
  
  @override
  void initState() {
    loginBloc.add(CheckIfUserIsAlreadyLoggedIn());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _screenScaler = ScreenScaler()..init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        reverse: true,
        child: Column(
          children: <Widget>[
            Container(
//              color: Colors.amber,
              alignment: Alignment.bottomCenter,
              height: _screenScaler.getHeight(45),
              width: double.infinity,
              padding: const EdgeInsets.all(64.0),
              child: Image.asset('assets/images/devfest_logo.png'),
            ),
            BlocListener(
              bloc: loginBloc,
              listener: (BuildContext context, LoginState state) {
                if (state is SuccessLoginState) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
                }
                if (state is UserAlreadyLoggedInState) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
                }
              },
              child: BlocBuilder(
                bloc: loginBloc,
                builder: (BuildContext context, LoginState state) {
                  if (state is InitialLoginState) {
                    return Container(
                        padding: EdgeInsets.all(_screenScaler.getHeight(15)),
                        height: _screenScaler.getHeight(40),
                        width: _screenScaler.getHeight(40),
                        child: CircularProgressIndicator());
                  }
                  if (state is NetworkErrorLoginState) {
                    return _buildForm();
                  }
                  if (state is NetworkBusyLoginState) {
                    return CircularProgressIndicator();
                  }
                  if (state is UserNotLoggedInState) {
                    return _buildForm();
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildForm() {
    return Container(
      height: _screenScaler.getHeight(50),
      padding: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              "EMAIL ADDRESS",
              style: TextStyle(
                fontSize: _screenScaler.getTextSize(9),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 16.0),
            child: TextField(
              controller: emailController,
              style:
                  TextStyle(fontSize: _screenScaler.getTextSize(11)),
              decoration: InputDecoration(
                hintText: 'Enter your email address',
              ),
            ),
          ),
          Text(
            "TICKER NUMBER",
            style: TextStyle(
              fontSize: _screenScaler.getTextSize(9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 16.0),
            child: TextField(
              controller: ticketNumberController,
              style:
                  TextStyle(fontSize: _screenScaler.getTextSize(11)),
              decoration: InputDecoration(
                hintText: 'Enter your ticket number',
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: () {
                loginBloc.add(
                  AuthorizeUser(
                      emailController.text, ticketNumberController.text),
                );
              },
              child: Text(
                "Log In",
                style: TextStyle(
                    fontSize: _screenScaler.getTextSize(11)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    ticketNumberController.dispose();
    loginBloc.close();
    super.dispose();
  }
}
