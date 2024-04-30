// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  final String message;
  final Data data;

  ProfileModel({
    required this.message,
    required this.data,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  final String email;
  final String username;
  final String? name;
  final String? birthday;
  final String? horoscope;
  final String? zodiac;
  final int? height;
  final int? weight;
  final List<dynamic> interests;

  Data({
    required this.email,
    required this.username,
    this.name,
    this.birthday,
    this.horoscope,
    this.zodiac,
    this.height,
    this.weight,
    required this.interests,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        email: json["email"],
        username: json["username"],
        name: json["name"],
        birthday: json["birthday"],
        horoscope: json["horoscope"],
        zodiac: json["zodiac"],
        height: json["height"],
        weight: json["weight"],
        interests: List<dynamic>.from(json["interests"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "username": username,
        "name": name,
        "birthday": birthday,
        "horoscope": horoscope,
        "zodiac": zodiac,
        "height": height,
        "weight": weight,
        "interests": List<dynamic>.from(interests.map((x) => x)),
      };
}
