import 'package:devfest_lk_2019/constants/data.dart';
import 'package:devfest_lk_2019/model/session.dart';
import 'package:devfest_lk_2019/widgets/tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

class SessionPage extends StatelessWidget {
  final Session session;

  const SessionPage({Key key, this.session}) : super(key: key);

  static ScreenScaler _screenScaler;

  static const Map<String, Color> tagColors = {
    'ANDROID': Colors.green,
    'KOTLIN': Colors.deepOrange,
    'CLOUD': Colors.blue,
    'FIREBASE': Colors.orange,
    'WEB': Colors.deepPurple,
    'ML': Colors.amber,
    'CI/CD': Colors.redAccent,
    'WTM': Colors.tealAccent,
    'AI': Colors.pinkAccent
  };

  Widget _buildTagRow() {
    if (session.data.tags == null) {
      return Container(
        padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
        child: Text(
          session.data.description,
          style: TextStyle(
            color: Colors.white,
            fontSize: _screenScaler.getTextSize(9),
          ),
        ),
      );
    }
    List<Tag> tags = [];
    session.data.tags.forEach((tagName) {
      tags.add(
        Tag(
          color: tagColors[tagName.toUpperCase()],
          name: tagName,
          iconSize: 12,
          textSize: 11,
          spacing: 1.5,
          padding: 8,
        ),
      );
    });
    return Row(children: tags);
  }

  @override
  Widget build(BuildContext context) {
    _screenScaler = new ScreenScaler()..init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: _screenScaler.getHeight(25),
                color: Colors.red,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      session.data.title,
                      style: TextStyle(
                        fontSize: _screenScaler.getTextSize(13.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: _screenScaler.getHeight(1)),
                    _buildTagRow(),
                    SizedBox(height: _screenScaler.getHeight(1)),
                    Text(
                      session.data.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: _screenScaler.getTextSize(10.5),
                        fontWeight: FontWeight.w100,
                        color: Colors.white70,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16.0, 8.0, 12.0),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                              AppData.getUrlBySpeakerId(
                                  session.data.speakers[0]),
                              height: _screenScaler.getHeight(4),
                              width: _screenScaler.getHeight(4),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(12.0, 8.0, 8.0, 8.0),
                            child: Text(
                              session.data.speakers[0].replaceFirst("_", " "),
                              style: TextStyle(
                                fontSize: _screenScaler.getTextSize(10.5),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
