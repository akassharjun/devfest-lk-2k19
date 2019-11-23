import 'package:devfest_lk_2019/pages/agenda.dart';
import 'package:devfest_lk_2019/pages/faq.dart';
import 'package:devfest_lk_2019/pages/speakers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  final List<Widget> screens = [AgendaPage(), SpeakersPage(), FaqPage()];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScreenScaler _screenScaler;
//  PageController _controller = PageController();
  int _currentIndex = 0;
  List<String> _titleList = ["Agenda", "Speakers", "FAQs"];

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
                icon: Icon(Icons.question_answer),
                title: Text("FAQ"),
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
          preferredSize: Size.fromHeight(_screenScaler.getHeight(10)),
          child: Container(
            height: _screenScaler.getHeight(10),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  _screenScaler.getWidth(4),
                  _screenScaler.getHeight(1.5),
                  _screenScaler.getWidth(4),
                  _screenScaler.getHeight(1.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      _titleList[_currentIndex],
                      style: TextStyle(
                        fontSize: _screenScaler.getTextSize(12),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
//        body: PageView(
//          controller: _controller,
//          onPageChanged: (int index) {
//            setState(() {
//              _currentIndex = index;
//            });
//          },
//          children: <Widget>[
//            AgendaPage(),
//            SpeakersPage(),
//            FaqPage(),
//          ],
//        ),
      body: IndexedStack(
        index: _currentIndex,
        children: widget.screens,
      ),
        bottomNavigationBar: _buildBottomNavigationBar(),);
  }
}
