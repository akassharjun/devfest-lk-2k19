import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_lk_2019/model/speaker.dart';
import 'package:devfest_lk_2019/pages/session.dart';
import 'package:devfest_lk_2019/pages/speaker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:flutter/src/widgets/icon.dart' as icon;
import '../app_colors.dart';

class SpeakerCard extends StatelessWidget {
  static ScreenScaler _screenScaler;
  final Speaker speaker;

  const SpeakerCard({Key key, this.speaker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _screenScaler = ScreenScaler()..init(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SpeakerPage(
              speaker: speaker,
            ),
          ),
        );
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
            _buildProfilePicture(speaker.details.photoUrl),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    speaker.details.name.replaceAll(" I", "I"),
                    style: TextStyle(
                      fontSize: _screenScaler.getTextSize(11),
                    ),
                  ),
                  Container(
                    width: _screenScaler.getWidth(45),
                    child: Divider(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      thickness: 2,
                    ),
                  ),
                  Text(
                    speaker.details.company,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: _screenScaler.getTextSize(10),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProfilePicture(String profilePicture) {
    return Hero(
      child: Container(
          padding: EdgeInsets.fromLTRB(8.0, 16.0, 24.0, 16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: CachedNetworkImage(
              imageUrl: "$profilePicture",
              placeholder: (context, url) => Container(height : 65, width : 65,child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => icon.Icon(Icons.error),
              imageBuilder: (context, imageProvider) => Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      ),
                ),
              ),
            ),
//          Image.network(
//            speaker.details.photoUrl,
//            height: 65,
//            width: 65,
//            fit: BoxFit.cover,
//          ),
          )), tag: '${speaker.speaker}',
    );
  }
}
