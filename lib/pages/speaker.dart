import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_lk_2019/model/speaker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:flutter/src/widgets/icon.dart' as icon;
import 'dart:io' show Platform;

class SpeakerPage extends StatelessWidget {
  final Speaker speaker;
  static ScreenScaler _screenScaler;

  const SpeakerPage({Key key, this.speaker}) : super(key: key);

  Widget _buildProfilePicture(String profilePicture) {
    return Center(
      child: Hero(
        child: Container(
            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CachedNetworkImage(
                imageUrl: "$profilePicture",
                placeholder: (context, url) => Container(
                    height: _screenScaler.getHeight(20),
                    width: _screenScaler.getHeight(20),
                    child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => icon.Icon(Icons.error),
                imageBuilder: (context, imageProvider) => Container(
                  height: _screenScaler.getHeight(20),
                  width: _screenScaler.getHeight(20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )),
        tag: '${speaker.speaker}',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _screenScaler = new ScreenScaler()..init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBar(
          leading: IconButton(
            icon: Platform.isAndroid
                ? icon.Icon(Icons.arrow_back)
                : icon.Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _buildProfilePicture(speaker.details.photoUrl),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      speaker.details.name,
                      style: TextStyle(
                        fontSize: _screenScaler.getTextSize(13.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: _screenScaler.getHeight(0.5)),
                    Text(
                      speaker.details.country,
                      style: TextStyle(
                        fontSize: _screenScaler.getTextSize(11),
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      speaker.details.company,
                      style: TextStyle(
                        fontSize: _screenScaler.getTextSize(11),
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: _screenScaler.getHeight(0.5)),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
                      width: _screenScaler.getWidth(45),
                      child: Divider(
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        thickness: 2,
                      ),
                    ),
                    SizedBox(height: _screenScaler.getHeight(0.5)),
                    _buildBiography(),
                    SizedBox(height: _screenScaler.getHeight(1.5)),
                    Text(
                      "Social Media",
                      style: TextStyle(
                        fontSize: _screenScaler.getTextSize(12),
                      ),
                    ),
                    SizedBox(height: _screenScaler.getHeight(1)),
                    _buildSocial(),
                    SizedBox(height: _screenScaler.getHeight(1),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBiography() {
    Widget biography;
    if (speaker.details.bio == " ") {
      biography = Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
        child: Text(
          "No Biography Available",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: _screenScaler.getTextSize(10.5),
            fontWeight: FontWeight.w100,
            color: Colors.white70,
          ),
        ),
      );
    } else {
      biography = Text(
        speaker.details.bio,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: _screenScaler.getTextSize(10.5),
          fontWeight: FontWeight.w100,
          color: Colors.white70,
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Biography",
          style: TextStyle(
            fontSize: _screenScaler.getTextSize(12),
          ),
        ),
        SizedBox(height: _screenScaler.getHeight(1)),
        biography,
      ],
    );
  }

  Widget _buildSocial() {
    List<Widget> socials = [];
    speaker.details.socials.forEach(
      (social) {
        if (social.name == SocialName.LINKED_IN) {
          socials.add(
            Container(
              child: GestureDetector(
                onTap: () {
                  print(social.link);
                },
                child: Container(
                  height: _screenScaler.getHeight(3),
                  width: _screenScaler.getHeight(3),
                  padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                  child: Image.asset('assets/images/linkedin.png'),
                ),
              ),
            ),
          );
        } else {
          socials.add(
            Container(
              child: GestureDetector(
                onTap: () {
                  print(social.link);
                },
                child: Container(
                  height: _screenScaler.getHeight(3),
                  width: _screenScaler.getHeight(3),
                  padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                  child: Image.asset('assets/images/twitter.png'),
                ),
              ),
            ),
          );
        }
      },
    );
    if (socials.isEmpty) {
      return Container(
        child: Text(
          "No Social Media Available",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: _screenScaler.getTextSize(10.5),
            fontWeight: FontWeight.w100,
            color: Colors.white70,
          ),
        ),
      );
    }
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: socials,
      ),
    );
  }
}
