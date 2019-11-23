import 'package:devfest_lk_2019/pages/agenda.dart';
import 'package:devfest_lk_2019/pages/moments.dart';
import 'package:devfest_lk_2019/pages/speakers.dart';
import 'package:devfest_lk_2019/pages/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  final List<Widget> screens = [AgendaPage(), SpeakersPage(), MomentsPage()];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScreenScaler _screenScaler;
  int _currentIndex = 0;
  List<String> _titleList = ["Agenda", "Speakers", "Moments"];

  @override
  void initState() {
    super.initState();
  }

  Container _buildBottomNavigationBar() {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: _screenScaler.getHeight(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: _screenScaler.getHeight(0.1),
            color: Colors.blueAccent,
          ),
          BottomNavigationBar(
            elevation: 0,
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            iconSize: _screenScaler.getFullScreen(12),
            selectedFontSize: _screenScaler.getTextSize(9),
            unselectedFontSize: _screenScaler.getTextSize(9),
            selectedItemColor: Colors.blueAccent,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.class_),
                title: Text("Agenda"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people_outline),
                title: Text("Speakers"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                title: Text("Moments"),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: _screenScaler.getHeight(0.01),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _screenScaler = ScreenScaler()..init(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_screenScaler.getHeight(6)),
        child: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              _titleList[_currentIndex],
              style: TextStyle(
                fontSize: _screenScaler.getTextSize(12),
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          centerTitle: false,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.blueAccent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return UserInfoPage();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: widget.screens,
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
