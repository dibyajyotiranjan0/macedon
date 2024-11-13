// To parse this JSON data, do
//
//     final singleCenterModel = singleCenterModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'single_center_model.freezed.dart';
part 'single_center_model.g.dart';

SingleCenterModel singleCenterModelFromJson(String str) =>
    SingleCenterModel.fromJson(json.decode(str));

String singleCenterModelToJson(SingleCenterModel data) =>
    json.encode(data.toJson());

@freezed
class SingleCenterModel with _$SingleCenterModel {
  const factory SingleCenterModel({
    int? status,
    bool? error,
    Messages? messages,
  }) = _SingleCenterModel;

  factory SingleCenterModel.fromJson(Map<String, dynamic> json) =>
      _$SingleCenterModelFromJson(json);
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
    List<SingleCenterDatum>? Single_Center_Data,
    List<SingleCenterAmety>? Single_Center_Ameties,
    List<SingleCenterGallery>? Single_Center_gallery,
    List<dynamic>? rating_review,
    List<SingleCenterActivity>? Single_Center_Activity,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class SingleCenterActivity with _$SingleCenterActivity {
  const factory SingleCenterActivity({
    String? service_id,
    String? service_name,
    String? image,
    List<dynamic>? packages,
    List<dynamic>? centertiming,
  }) = _SingleCenterActivity;

  factory SingleCenterActivity.fromJson(Map<String, dynamic> json) =>
      _$SingleCenterActivityFromJson(json);
}

@freezed
class SingleCenterAmety with _$SingleCenterAmety {
  const factory SingleCenterAmety({
    String? facilities_id,
    String? facilities_name,
    String? image,
  }) = _SingleCenterAmety;

  factory SingleCenterAmety.fromJson(Map<String, dynamic> json) =>
      _$SingleCenterAmetyFromJson(json);
}

@freezed
class SingleCenterDatum with _$SingleCenterDatum {
  const factory SingleCenterDatum({
    String? center_id,
    String? center_name,
    dynamic logo_image,
    String? hygene,
    String? centerimage,
    String? city_id,
    String? city_name,
    String? pin,
    String? address1,
    String? email,
    String? contact_no,
  }) = _SingleCenterDatum;

  factory SingleCenterDatum.fromJson(Map<String, dynamic> json) =>
      _$SingleCenterDatumFromJson(json);
}

@freezed
class SingleCenterGallery with _$SingleCenterGallery {
  const factory SingleCenterGallery({
    String? center_gallery_id,
    String? cente_image,
    String? center_id,
    String? created_date,
  }) = _SingleCenterGallery;

  factory SingleCenterGallery.fromJson(Map<String, dynamic> json) =>
      _$SingleCenterGalleryFromJson(json);
}
