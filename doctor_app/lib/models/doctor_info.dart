
import 'dart:convert';

class DoctorInfoModel {
  DoctorInfoModel({
    this.id,
    this.firstName,
    this.lastName,
    this.profilePic,
    this.favorite,
    this.primaryContactNo,
    this.rating,
    this.emailAddress,
    this.qualification,
    this.description,
    this.specialization,
    this.languagesKnown,
  });

  final int id;
  final String firstName;
  final String lastName;
  final String profilePic;
  final bool favorite;
  final String primaryContactNo;
  final String rating;
  final String emailAddress;
  final String qualification;
  final String description;
  final Specialization specialization;
  final String languagesKnown;

  factory DoctorInfoModel.fromJson(String str) => DoctorInfoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DoctorInfoModel.fromMap(Map<String, dynamic> json) => DoctorInfoModel(
    id: json["id"] == null ? null : json["id"],
    firstName: json["first_name"] == null ? null : json["first_name"],
    lastName: json["last_name"] == null ? null : json["last_name"],
    profilePic: json["profile_pic"] == null ? null : json["profile_pic"],
    favorite: json["favorite"] == null ? null : json["favorite"],
    primaryContactNo: json["primary_contact_no"] == null ? null : json["primary_contact_no"],
    rating: json["rating"] == null ? null : json["rating"],
    emailAddress: json["email_address"] == null ? null : json["email_address"],
    qualification: json["qualification"] == null ? null : json["qualification"],
    description: json["description"] == null ? null : json["description"],
    specialization: json["specialization"] == null ? null : specializationValues.map[json["specialization"]],
    languagesKnown: json["languagesKnown"] == null ? null : json["languagesKnown"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "first_name": firstName == null ? null : firstName,
    "last_name": lastName == null ? null : lastName,
    "profile_pic": profilePic == null ? null : profilePic,
    "favorite": favorite == null ? null : favorite,
    "primary_contact_no": primaryContactNo == null ? null : primaryContactNo,
    "rating": rating == null ? null : rating,
    "email_address": emailAddress == null ? null : emailAddress,
    "qualification": qualification == null ? null : qualification,
    "description": description == null ? null : description,
    "specialization": specialization == null ? null : specializationValues.reverse[specialization],
    "languagesKnown": languagesKnown == null ? null : languagesKnown,
  };
}

enum Specialization { GENERAL_PRACTICE, OBSTETRICS_GYNAECOLOGY }

final specializationValues = EnumValues({
  "General Practice": Specialization.GENERAL_PRACTICE,
  "Obstetrics/Gynaecology": Specialization.OBSTETRICS_GYNAECOLOGY
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