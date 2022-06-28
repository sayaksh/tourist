// To parse this JSON data, do
//
//     final districts = districtsFromJson(jsonString);

import 'dart:convert';

Districts districtsFromJson(String str) => Districts.fromJson(json.decode(str));

String districtsToJson(Districts data) => json.encode(data.toJson());

class Districts {
  Districts({
    required this.data,
    required this.meta,
  });

  List<Datum> data;
  Meta meta;

  factory Districts.fromJson(Map<String, dynamic> json) => Districts(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.attributes,
  });

  int id;
  Attributes attributes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
  Meta({
    required this.pagination,
  });

  Pagination pagination;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
      };
}

class Pagination {
  Pagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  int page;
  int pageSize;
  int pageCount;
  int total;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}
