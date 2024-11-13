// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    int? status,
    bool? error,
    Messages? messages,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
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
    List<TestimonialDtl>? testimonial_dtl,
    List<BannerDtl>? banner_dtl,
    List<ServiceList>? Service_List,
    List<ServiceDatum>? service_data,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class BannerDtl with _$BannerDtl {
  const factory BannerDtl({
    String? banner_id,
    String? orderby,
    String? image,
  }) = _BannerDtl;

  factory BannerDtl.fromJson(Map<String, dynamic> json) =>
      _$BannerDtlFromJson(json);
}

@freezed
class ServiceDatum with _$ServiceDatum {
  const factory ServiceDatum({
    String? service_id,
    String? service_name,
    List<CenterDtl>? CenterDtls,
  }) = _ServiceDatum;

  factory ServiceDatum.fromJson(Map<String, dynamic> json) =>
      _$ServiceDatumFromJson(json);
}

@freezed
class CenterDtl with _$CenterDtl {
  const factory CenterDtl({
    String? id,
    String? center_name,
    String? centerimage,
    String? city_id,
    String? city_name,
  }) = _CenterDtl;

  factory CenterDtl.fromJson(Map<String, dynamic> json) =>
      _$CenterDtlFromJson(json);
}

@freezed
class ServiceList with _$ServiceList {
  const factory ServiceList({
    String? service_master_id,
    String? service_master_name,
    String? image,
    String? service_type,
    String? status,
    List<CenterService>? center_service,
  }) = _ServiceList;

  factory ServiceList.fromJson(Map<String, dynamic> json) =>
      _$ServiceListFromJson(json);
}

@freezed
class CenterService with _$CenterService {
  const factory CenterService({
    String? center_id,
    String? profile_image,
    String? center_name,
    String? city_id,
    String? city_name,
    String? area_id,
    String? areaname,
  }) = _CenterService;

  factory CenterService.fromJson(Map<String, dynamic> json) =>
      _$CenterServiceFromJson(json);
}

@freezed
class TestimonialDtl with _$TestimonialDtl {
  const factory TestimonialDtl({
    String? testimonial_id,
    String? name,
    String? image,
    String? message,
  }) = _TestimonialDtl;

  factory TestimonialDtl.fromJson(Map<String, dynamic> json) =>
      _$TestimonialDtlFromJson(json);
}
