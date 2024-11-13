// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferModelImpl _$$OfferModelImplFromJson(Map<String, dynamic> json) =>
    _$OfferModelImpl(
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OfferModelImplToJson(_$OfferModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      coupon_code_id: json['coupon_code_id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      city_id: json['city_id'] as String?,
      discount_type: json['discount_type'] as String?,
      discount_value: json['discount_value'] as String?,
      valid_uo_to: json['valid_uo_to'] == null
          ? null
          : DateTime.parse(json['valid_uo_to'] as String),
      used_up_to: json['used_up_to'] as String?,
      no_of_use_user: json['no_of_use_user'] as String?,
      price_cart: json['price_cart'] as String?,
      img: json['img'] as String?,
      create_date: json['create_date'] as String?,
      update_date: json['update_date'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'coupon_code_id': instance.coupon_code_id,
      'name': instance.name,
      'code': instance.code,
      'city_id': instance.city_id,
      'discount_type': instance.discount_type,
      'discount_value': instance.discount_value,
      'valid_uo_to': instance.valid_uo_to?.toIso8601String(),
      'used_up_to': instance.used_up_to,
      'no_of_use_user': instance.no_of_use_user,
      'price_cart': instance.price_cart,
      'img': instance.img,
      'create_date': instance.create_date,
      'update_date': instance.update_date,
    };
