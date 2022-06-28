// To parse this JSON data, do
//
//     final district = districtFromJson(jsonString);

import 'dart:convert';

District districtFromJson(String str) => District.fromJson(json.decode(str));

String districtToJson(District data) => json.encode(data.toJson());

class District {
  District({
    required this.data,
    required this.meta,
  });

  Data data;
  Meta meta;

  factory District.fromJson(Map<String, dynamic> json) => District(
        data: Data.fromJson(json["data"]),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "meta": meta.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.attributes,
  });

  int id;
  Attributes attributes;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
  });

  int stateId;
  String districtName;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        stateId: json["state_id"],
        districtName: json["district_name"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "state_id": stateId,
        "district_name": districtName,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
      };
}

class Meta {
  Meta();

  factory Meta.fromJson(Map<String, dynamic> json) => Meta();

  Map<String, dynamic> toJson() => {};
}
