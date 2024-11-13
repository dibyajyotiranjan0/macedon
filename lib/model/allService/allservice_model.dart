// To parse this JSON data, do
//
//     final allServiceModel = allServiceModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'allservice_model.freezed.dart';
part 'allservice_model.g.dart';

AllServiceModel allServiceModelFromJson(String str) =>
    AllServiceModel.fromJson(json.decode(str));

String allServiceModelToJson(AllServiceModel data) =>
    json.encode(data.toJson());

@freezed
class AllServiceModel with _$AllServiceModel {
  const factory AllServiceModel({
    int? status,
    bool? error,
    String? message,
    List<ServieDatum>? data,
  }) = _AllServiceModel;

  factory AllServiceModel.fromJson(Map<String, dynamic> json) =>
      _$AllServiceModelFromJson(json);
}

@freezed
class ServieDatum with _$ServieDatum {
  const factory ServieDatum({
    String? service_master_id,
    String? service_master_name,
    String? image,
  }) = _ServieDatum;

  factory ServieDatum.fromJson(Map<String, dynamic> json) =>
      _$ServieDatumFromJson(json);
}
