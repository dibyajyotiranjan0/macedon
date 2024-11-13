// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile_modoel.freezed.dart';
part 'profile_modoel.g.dart';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    int? status,
    bool? error,
    Messages? messages,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class Messages with _$Messages {
  const factory Messages({
    String? responsecode,
    Status? status,
  }) = _Messages;

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status({
    String? user_id,
    dynamic fullname,
    dynamic email,
    String? contact,
    dynamic profile_image,
    dynamic gender,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
