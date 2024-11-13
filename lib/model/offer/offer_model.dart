// To parse this JSON data, do
//
//     final offerModel = offerModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'offer_model.freezed.dart';
part 'offer_model.g.dart';

OfferModel offerModelFromJson(String str) =>
    OfferModel.fromJson(json.decode(str));

String offerModelToJson(OfferModel data) => json.encode(data.toJson());

@freezed
class OfferModel with _$OfferModel {
  const factory OfferModel({
    int? status,
    bool? error,
    List<Datum>? data,
  }) = _OfferModel;

  factory OfferModel.fromJson(Map<String, dynamic> json) =>
      _$OfferModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? coupon_code_id,
    String? name,
    String? code,
    String? city_id,
    String? discount_type,
    String? discount_value,
    DateTime? valid_uo_to,
    String? used_up_to,
    String? no_of_use_user,
    String? price_cart,
    String? img,
    String? create_date,
    String? update_date,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
