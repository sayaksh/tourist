// To parse this JSON data, do
//
//     final districtModel = districtModelFromJson(jsonString);

import 'dart:convert';

DistrictModel districtModelFromJson(String str) =>
    DistrictModel.fromJson(json.decode(str));

String districtModelToJson(DistrictModel data) => json.encode(data.toJson());

class DistrictModel {
  DistrictModel({
    required this.id,
    required this.attributes,
  });

  final int id;
  final Attributes attributes;

  factory DistrictModel.fromJson(Map<String, dynamic> json) => DistrictModel(
        id: json["id"],
        attributes: Attributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class Attributes {
  Attributes({
    required this.stateId,
    required this.districtName,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.spots,
  });

  final int stateId;
  final String districtName;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime publishedAt;
  final List<Spot> spots;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        stateId: json["state_id"],
        districtName: json["district_name"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        spots: List<Spot>.from(json["spots"].map((x) => Spot.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "state_id": stateId,
        "district_name": districtName,
        "description": description,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "spots": List<dynamic>.from(spots.map((x) => x.toJson())),
      };
}

class Spot {
  Spot({
    required this.spotName,
    required this.imgUrl,
  });

  final String spotName;
  final String imgUrl;

  factory Spot.fromJson(Map<String, dynamic> json) => Spot(
        spotName: json["spotName"],
        imgUrl: json["img_url"],
      );

  Map<String, dynamic> toJson() => {
        "spotName": spotName,
        "img_url": imgUrl,
      };
}
