import 'package:devfest_lk_2019/model/session.dart';
import 'package:devfest_lk_2019/pages/faq.dart';
import 'package:devfest_lk_2019/pages/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:intl/intl.dart';
import '../app_colors.dart';
import 'tag.dart';

class SessionCard extends StatelessWidget {
  final Session session;
  SessionCard({
    Key key,
    this.session,
  }) : super(key: key);

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

  String getFormattedDate(String time) {
    DateTime date2 = DateFormat("hh:mm").parse(time);
    return "${DateFormat("hh:mm\na").format(date2)}";
  }

  @override
  Widget build(BuildContext context) {
    _screenScaler = ScreenScaler()..init(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => SessionPage(session: session,)));
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        padding: EdgeInsets.fromLTRB(
          8.0,
          _screenScaler.getHeight(1),
          8.0,
          _screenScaler.getHeight(1),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.BORDER,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(8.0, 16.0, 16.0, 16.0),
              child: Text(
                getFormattedDate(session.startTime),
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
                    session.data.title,
                    style: TextStyle(
                      fontSize: _screenScaler.getTextSize(11),
                    ),
                  ),
                  Divider(
                    height: 6,
                    color: Colors.transparent,
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     ClipRRect(
                  //       borderRadius: BorderRadius.circular(30.0),
                  //       child: Image.network(
                  //         'https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/hkj.jpg?alt=media&token=09243e79-8cdd-48b6-85f7-d2d21ddca4a6',
                  //         height: 30,
                  //         width: 30,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  Text(
                    session.data.tags != null
                        ? "Conference Hall"
                        : "Class Room A",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: _screenScaler.getTextSize(10),
                    ),
                  ),
                  Divider(
                    height: 20,
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     ClipRRect(
                  //       borderRadius: BorderRadius.circular(30.0),
                  //       child: Image.network(
                  //         "${session.data.speakers[0].split(" @ ")[1]}",
                  //         height: 20,
                  //         width: 20,
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                  //       child: Text(session.data.speakers[0].split(" @ ")[0]),
                  //     ),
                  //   ],
                  // ),
                  _buildTagRow()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

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
        ),
      );
    });
    return Row(children: tags);
  }
}
