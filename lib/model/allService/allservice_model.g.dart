// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allservice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllServiceModelImpl _$$AllServiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AllServiceModelImpl(
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ServieDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllServiceModelImplToJson(
        _$AllServiceModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };

_$ServieDatumImpl _$$ServieDatumImplFromJson(Map<String, dynamic> json) =>
    _$ServieDatumImpl(
      service_master_id: json['service_master_id'] as String?,
      service_master_name: json['service_master_name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ServieDatumImplToJson(_$ServieDatumImpl instance) =>
    <String, dynamic>{
      'service_master_id': instance.service_master_id,
      'service_master_name': instance.service_master_name,
      'image': instance.image,
    };
