// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  int status;
  String message;
  List<Datum> data;

  HomeModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  List<Country> favourites;
  List<Country> country;

  Datum({
    required this.favourites,
    required this.country,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        favourites: List<Country>.from(
            json["favourites"].map((x) => Country.fromJson(x))),
        country:
            List<Country>.from(json["country"].map((x) => Country.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "favourites": List<dynamic>.from(favourites.map((x) => x.toJson())),
        "country": List<dynamic>.from(country.map((x) => x.toJson())),
      };
}

class Country {
  String uniqueId;
  bool isDeleted;
  String name;
  String isoCode;
  String isoCode3Digit;
  String stdCode;
  double sendingVat;
  double receivingVat;
  String? flag;
  int? mobileMinLength;
  int? mobileMaxLength;
  int? population;
  int? order;
  bool isFavorite;
  List<dynamic> languages;

  Country({
    required this.uniqueId,
    required this.isDeleted,
    required this.name,
    required this.isoCode,
    required this.isoCode3Digit,
    required this.stdCode,
    required this.sendingVat,
    required this.receivingVat,
    required this.flag,
    required this.mobileMinLength,
    required this.mobileMaxLength,
    required this.population,
    required this.order,
    required this.isFavorite,
    required this.languages,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        uniqueId: json["unique_id"],
        isDeleted: json["is_deleted"],
        name: json["name"],
        isoCode: json["iso_code"],
        isoCode3Digit: json["iso_code_3_digit"],
        stdCode: json["std_code"],
        sendingVat: json["sending_vat"],
        receivingVat: json["receiving_vat"],
        flag: json["flag"],
        mobileMinLength: json["mobile_min_length"],
        mobileMaxLength: json["mobile_max_length"],
        population: json["population"],
        order: json["order"],
        isFavorite: json["is_favorite"],
        languages: List<dynamic>.from(json["languages"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "unique_id": uniqueId,
        "is_deleted": isDeleted,
        "name": name,
        "iso_code": isoCode,
        "iso_code_3_digit": isoCode3Digit,
        "std_code": stdCode,
        "sending_vat": sendingVat,
        "receiving_vat": receivingVat,
        "flag": flag,
        "mobile_min_length": mobileMinLength,
        "mobile_max_length": mobileMaxLength,
        "population": population,
        "order": order,
        "is_favorite": isFavorite,
        "languages": List<dynamic>.from(languages.map((x) => x)),
      };
}
