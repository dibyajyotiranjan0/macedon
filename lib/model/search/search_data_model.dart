// To parse this JSON data, do
//
//     final searchModel = searchModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'search_data_model.freezed.dart';
part 'search_data_model.g.dart';

SearchModel searchModelFromJson(String str) =>
    SearchModel.fromJson(json.decode(str));

String searchModelToJson(SearchModel data) => json.encode(data.toJson());

@freezed
class SearchModel with _$SearchModel {
  const factory SearchModel({
    int? status,
    bool? error,
    Data? data,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    List<CenterDatum>? center_data,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class CenterDatum with _$CenterDatum {
  @JsonSerializable(
    fieldRename: FieldRename.snake, // <---
  )
  const factory CenterDatum({
    String? id,
    String? center_name,
    String? status,
    String? city_name,
    String? areaname,
    dynamic hygene,
    dynamic logo_image,
    String? profile_image,
    String? service_id,
    dynamic details,
  }) = _CenterDatum;

  factory CenterDatum.fromJson(Map<String, dynamic> json) =>
      _$CenterDatumFromJson(json);
}
