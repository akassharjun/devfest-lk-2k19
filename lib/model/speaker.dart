// To parse this JSON data, do
//
//     final speaker = speakerFromJson(jsonString);

import 'dart:convert';

class Speaker {
  String speaker;
  Details details;

  Speaker({
    this.speaker,
    this.details,
  });

  factory Speaker.fromJson(String str) => Speaker.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Speaker.fromMap(Map<String, dynamic> json) => Speaker(
    speaker: json["speaker"] == null ? null : json["speaker"],
    details: json["details"] == null ? null : Details.fromMap(json["details"]),
  );

  Map<String, dynamic> toMap() => {
    "speaker": speaker == null ? null : speaker,
    "details": details == null ? null : details.toMap(),
  };
}

class Details {
  String title;
  String photo;
  int order;
  bool featured;
  String company;
  String companyLogoUrl;
  List<Social> socials;
  String country;
  String bio;
  List<Badge> badges;
  String shortBio;
  String photoUrl;
  String name;
  String companyLogo;

  Details({
    this.title,
    this.photo,
    this.order,
    this.featured,
    this.company,
    this.companyLogoUrl,
    this.socials,
    this.country,
    this.bio,
    this.badges,
    this.shortBio,
    this.photoUrl,
    this.name,
    this.companyLogo,
  });

  factory Details.fromJson(String str) => Details.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Details.fromMap(Map<String, dynamic> json) => Details(
    title: json["title"] == null ? null : json["title"],
    photo: json["photo"] == null ? null : json["photo"],
    order: json["order"] == null ? null : json["order"],
    featured: json["featured"] == null ? null : json["featured"],
    company: json["company"] == null ? null : json["company"],
    companyLogoUrl: json["companyLogoUrl"] == null ? null : json["companyLogoUrl"],
    socials: json["socials"] == null ? null : List<Social>.from(json["socials"].map((x) => Social.fromMap(x))),
    country: json["country"] == null ? null : json["country"],
    bio: json["bio"] == null ? null : json["bio"],
    badges: json["badges"] == null ? null : List<Badge>.from(json["badges"].map((x) => Badge.fromMap(x))),
    shortBio: json["shortBio"] == null ? null : json["shortBio"],
    photoUrl: json["photoUrl"] == null ? null : json["photoUrl"],
    name: json["name"] == null ? null : json["name"],
    companyLogo: json["companyLogo"] == null ? null : json["companyLogo"],
  );

  Map<String, dynamic> toMap() => {
    "title": title == null ? null : title,
    "photo": photo == null ? null : photo,
    "order": order == null ? null : order,
    "featured": featured == null ? null : featured,
    "company": company == null ? null : company,
    "companyLogoUrl": companyLogoUrl == null ? null : companyLogoUrl,
    "socials": socials == null ? null : List<dynamic>.from(socials.map((x) => x.toMap())),
    "country": country == null ? null : country,
    "bio": bio == null ? null : bio,
    "badges": badges == null ? null : List<dynamic>.from(badges.map((x) => x.toMap())),
    "shortBio": shortBio == null ? null : shortBio,
    "photoUrl": photoUrl == null ? null : photoUrl,
    "name": name == null ? null : name,
    "companyLogo": companyLogo == null ? null : companyLogo,
  };
}

class Badge {
  BadgeName name;
  String description;
  String link;

  Badge({
    this.name,
    this.description,
    this.link,
  });

  factory Badge.fromJson(String str) => Badge.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Badge.fromMap(Map<String, dynamic> json) => Badge(
    name: json["name"] == null ? null : badgeNameValues.map[json["name"]],
    description: json["description"] == null ? null : json["description"],
    link: json["link"] == null ? null : json["link"],
  );

  Map<String, dynamic> toMap() => {
    "name": name == null ? null : badgeNameValues.reverse[name],
    "description": description == null ? null : description,
    "link": link == null ? null : link,
  };
}

enum BadgeName { GDE, GOOGLE, GDG }

final badgeNameValues = EnumValues({
  "gde": BadgeName.GDE,
  "gdg": BadgeName.GDG,
  "google": BadgeName.GOOGLE
});

class Social {
  SocialName name;
  Icon icon;
  String link;

  Social({
    this.name,
    this.icon,
    this.link,
  });

  factory Social.fromJson(String str) => Social.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Social.fromMap(Map<String, dynamic> json) => Social(
    name: json["name"] == null ? null : socialNameValues.map[json["name"]],
    icon: json["icon"] == null ? null : iconValues.map[json["icon"]],
    link: json["link"] == null ? null : json["link"],
  );

  Map<String, dynamic> toMap() => {
    "name": name == null ? null : socialNameValues.reverse[name],
    "icon": icon == null ? null : iconValues.reverse[icon],
    "link": link == null ? null : link,
  };
}

enum Icon { LINKEDIN, TWITTER }

final iconValues = EnumValues({
  "linkedin": Icon.LINKEDIN,
  "twitter": Icon.TWITTER
});

enum SocialName { LINKED_IN, TWITTER }

final socialNameValues = EnumValues({
  "LinkedIn": SocialName.LINKED_IN,
  "Twitter": SocialName.TWITTER
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
