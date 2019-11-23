import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

class Tag extends StatelessWidget {
  final Color color;
  final String name;
  final double iconSize;
  final double textSize;
  final double spacing;
  final double padding;

  const Tag({
    Key key,
    this.color,
    this.name,
    this.iconSize = 8,
    this.textSize = 9,
    this.spacing = 1,
    this.padding = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenScaler _screenScaler = ScreenScaler()..init(context);

    return Container(
      padding: padding <= 5
          ? EdgeInsets.all(padding)
          : EdgeInsets.fromLTRB(0, padding - 5, padding, padding - 5),
      child: Row(
        children: <Widget>[
          Container(
            height: iconSize,
            width: iconSize,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(100)),
          ),
          SizedBox(
            width: _screenScaler.getWidth(spacing),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: _screenScaler.getTextSize(textSize),
            ),
          ),
        ],
      ),
    );
  }
}
