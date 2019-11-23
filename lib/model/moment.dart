// To parse this JSON data, do
//
//     final moment = momentFromJson(jsonString);

import 'dart:convert';

class Moment {
  String userId;
  String message;
  String imageUrl;

  Moment({
    this.userId,
    this.message,
    this.imageUrl,
  });

  factory Moment.fromJson(String str) => Moment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Moment.fromMap(Map<String, dynamic> json) => Moment(
    userId: json["userID"] == null ? null : json["userID"],
    message: json["message"] == null ? null : json["message"],
    imageUrl: json["imageURL"] == null ? null : json["imageURL"],
  );

  Map<String, dynamic> toMap() => {
    "userID": userId == null ? null : userId,
    "message": message == null ? null : message,
    "imageURL": imageUrl == null ? null : imageUrl,
  };
}
