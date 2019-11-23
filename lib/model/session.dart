
import 'dart:convert';

class Session  {
  String startTime;
  String endTime;
  Data data;

  Session({
    this.startTime,
    this.endTime,
    this.data,
  });

  factory Session.fromJson(String str) => Session.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Session.fromMap(Map<String, dynamic> json) => Session(
    startTime: json["startTime"] == null ? null : json["startTime"],
    endTime: json["endTime"] == null ? null : json["endTime"],
    data: json["data"] == null ? null : Data.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "startTime": startTime == null ? null : startTime,
    "endTime": endTime == null ? null : endTime,
    "data": data == null ? null : data.toMap(),
  };
}

class Data {
  String icon;
  String title;
  String image;
  String description;
  List<String> tags;
  List<String> speakers;
  String language;
  String complexity;

  Data({
    this.icon,
    this.title,
    this.image,
    this.description,
    this.tags,
    this.speakers,
    this.language,
    this.complexity,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    icon: json["icon"] == null ? null : json["icon"],
    title: json["title"] == null ? null : json["title"],
    image: json["image"] == null ? null : json["image"],
    description: json["description"] == null ? null : json["description"],
    tags: json["tags"] == null ? null : List<String>.from(json["tags"].map((x) => x)),
    speakers: json["speakers"] == null ? null : List<String>.from(json["speakers"].map((x) => x)),
    language: json["language"] == null ? null : json["language"],
    complexity: json["complexity"] == null ? null : json["complexity"],
  );

  Map<String, dynamic> toMap() => {
    "icon": icon == null ? null : icon,
    "title": title == null ? null : title,
    "image": image == null ? null : image,
    "description": description == null ? null : description,
    "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x)),
    "speakers": speakers == null ? null : List<dynamic>.from(speakers.map((x) => x)),
    "language": language == null ? null : language,
    "complexity": complexity == null ? null : complexity,
  };
}
