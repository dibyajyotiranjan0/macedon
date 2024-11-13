// To parse this JSON data, do
//
//     final singleServicePageModel = singleServicePageModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'single_service_page_modoel.freezed.dart';
part 'single_service_page_modoel.g.dart';

SingleServicePageModel singleServicePageModelFromJson(String str) =>
    SingleServicePageModel.fromJson(json.decode(str));

String singleServicePageModelToJson(SingleServicePageModel data) =>
    json.encode(data.toJson());

@freezed
class SingleServicePageModel with _$SingleServicePageModel {
  const factory SingleServicePageModel({
    int? status,
    bool? error,
    Messages? messages,
  }) = _SingleServicePageModel;

  factory SingleServicePageModel.fromJson(Map<String, dynamic> json) =>
      _$SingleServicePageModelFromJson(json);
}

@freezed
class Messages with _$Messages {
  const factory Messages({
    String? responsecode,
    Data? data,
  }) = _Messages;

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    List<CenterDatum>? Center_Data,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class CenterDatum with _$CenterDatum {
  const factory CenterDatum({
    String? center_id,
    String? center_name,
    String? logo_image,
    String? hygene,
    String? centerimage,
    String? city_id,
    String? city_name,
    String? area_id,
    String? areaname,
    String? service_master_id,
    String? service_master_name,
    String? email,
    String? contact_no,
  }) = _CenterDatum;

  factory CenterDatum.fromJson(Map<String, dynamic> json) =>
      _$CenterDatumFromJson(json);
}
