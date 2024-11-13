// To parse this JSON data, do
//
//     final allCityModel = allCityModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'allcity_mdel.freezed.dart';
part 'allcity_mdel.g.dart';

AllCityModel allCityModelFromJson(String str) =>
    AllCityModel.fromJson(json.decode(str));

String allCityModelToJson(AllCityModel data) => json.encode(data.toJson());

@freezed
class AllCityModel with _$AllCityModel {
  const factory AllCityModel({
    int? status,
    bool? error,
    String? message,
    List<Datum>? data,
  }) = _AllCityModel;

  factory AllCityModel.fromJson(Map<String, dynamic> json) =>
      _$AllCityModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? city_id,
    String? city_name,
    List<Area>? areas,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Area with _$Area {
  const factory Area({
    String? area_id,
    String? areaname,
  }) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}
