import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    int? status,
    bool? error,
    Messages? messages,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
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
    String? contact_otp,
    int? login_otp,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
