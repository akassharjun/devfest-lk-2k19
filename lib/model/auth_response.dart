// To parse this JSON data, do
//
//     final authResponse = authResponseFromJson(jsonString);

import 'dart:convert';

class AuthResponse {
  String message;
  String token;
  User user;

  AuthResponse({
    this.message,
    this.token,
    this.user,
  });

  factory AuthResponse.fromJson(String str) => AuthResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponse.fromMap(Map<String, dynamic> json) => AuthResponse(
    message: json["message"] == null ? null : json["message"],
    token: json["token"] == null ? null : json["token"],
    user: json["user"] == null ? null : User.fromMap(json["user"]),
  );

  Map<String, dynamic> toMap() => {
    "message": message == null ? null : message,
    "token": token == null ? null : token,
    "user": user == null ? null : user.toMap(),
  };
}

class User {
  String email;
  int id;
  int mobile;
  int nic;
  String name;
  String status;
  String tshirt;

  User({
    this.email,
    this.id,
    this.mobile,
    this.nic,
    this.name,
    this.status,
    this.tshirt,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
    email: json["Email"] == null ? null : json["Email"],
    id: json["Id"] == null ? null : json["Id"],
    mobile: json["Mobile"] == null ? null : json["Mobile"],
    nic: json["NIC"] == null ? null : json["NIC"],
    name: json["Name"] == null ? null : json["Name"],
    status: json["Status"] == null ? null : json["Status"],
    tshirt: json["Tshirt"] == null ? null : json["Tshirt"],
  );

  Map<String, dynamic> toMap() => {
    "Email": email == null ? null : email,
    "Id": id == null ? null : id,
    "Mobile": mobile == null ? null : mobile,
    "NIC": nic == null ? null : nic,
    "Name": name == null ? null : name,
    "Status": status == null ? null : status,
    "Tshirt": tshirt == null ? null : tshirt,
  };
}
