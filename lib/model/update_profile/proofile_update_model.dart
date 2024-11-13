// To parse this JSON data, do
//
//     final profileUpdateModel = profileUpdateModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'proofile_update_model.freezed.dart';
part 'proofile_update_model.g.dart';

ProfileUpdateModel profileUpdateModelFromJson(String str) =>
    ProfileUpdateModel.fromJson(json.decode(str));

String profileUpdateModelToJson(ProfileUpdateModel data) =>
    json.encode(data.toJson());

@freezed
class ProfileUpdateModel with _$ProfileUpdateModel {
  const factory ProfileUpdateModel({
    int? status,
    bool? error,
    Messages? messages,
  }) = _ProfileUpdateModel;

  factory ProfileUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateModelFromJson(json);
}

@freezed
class Messages with _$Messages {
  const factory Messages({
    String? responsecode,
    String? status,
  }) = _Messages;

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);
}
