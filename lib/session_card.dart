
import 'package:flutter/material.dart';

import 'app_colors.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: AppColors.BACKGROUND,
      margin: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1, ////                <--- border width here
              color: AppColors.BORDER),
        ),
        padding: EdgeInsets.all(10.0),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text(
                    "10:00\nAM",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 1,
//                          color: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Beyond Mobile : Material Design, Adaptable UI and Flutter",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                            4.0, 4.0, 4.0, 1.0),
                        child: Text(
                          "Hall A",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey[500]),
                        ),
                      ),
                      Divider(
                        color: AppColors.BORDER,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Design, Flutter",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}