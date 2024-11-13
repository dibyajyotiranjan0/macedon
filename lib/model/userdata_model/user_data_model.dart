import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
class UserdataModel with _$UserdataModel {
  const factory UserdataModel({
    int? status,
    bool? error,
    Messages? messages,
  }) = _UserdataModel;

  factory UserdataModel.fromJson(Map<String, dynamic> json) =>
      _$UserdataModelFromJson(json);
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
    bool? isLoggedIn,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
