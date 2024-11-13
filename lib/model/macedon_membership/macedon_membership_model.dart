// To parse this JSON data, do
//
//     final macedonMemebershipModel = macedonMemebershipModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'macedon_membership_model.freezed.dart';
part 'macedon_membership_model.g.dart';

MacedonMemebershipModel macedonMemebershipModelFromJson(String str) =>
    MacedonMemebershipModel.fromJson(json.decode(str));

String macedonMemebershipModelToJson(MacedonMemebershipModel data) =>
    json.encode(data.toJson());

@freezed
class MacedonMemebershipModel with _$MacedonMemebershipModel {
  const factory MacedonMemebershipModel({
    int? status,
    bool? error,
    Messages? messages,
  }) = _MacedonMemebershipModel;

  factory MacedonMemebershipModel.fromJson(Map<String, dynamic> json) =>
      _$MacedonMemebershipModelFromJson(json);
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
    List<MembershipDtl>? membership_dtl,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class MembershipDtl with _$MembershipDtl {
  const factory MembershipDtl({
    String? package_id,
    String? package_name,
    String? package_duration,
    String? package_price,
    String? package_description,
    String? service_category,
  }) = _MembershipDtl;

  factory MembershipDtl.fromJson(Map<String, dynamic> json) =>
      _$MembershipDtlFromJson(json);
}
