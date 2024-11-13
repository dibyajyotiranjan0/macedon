// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchModelImpl _$$SearchModelImplFromJson(Map<String, dynamic> json) =>
    _$SearchModelImpl(
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchModelImplToJson(_$SearchModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      center_data: (json['center_data'] as List<dynamic>?)
          ?.map((e) => CenterDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'center_data': instance.center_data,
    };

_$CenterDatumImpl _$$CenterDatumImplFromJson(Map<String, dynamic> json) =>
    _$CenterDatumImpl(
      id: json['id'] as String?,
      center_name: json['center_name'] as String?,
      status: json['status'] as String?,
      city_name: json['city_name'] as String?,
      areaname: json['areaname'] as String?,
      hygene: json['hygene'],
      logo_image: json['logo_image'],
      profile_image: json['profile_image'] as String?,
      service_id: json['service_id'] as String?,
      details: json['details'],
    );

Map<String, dynamic> _$$CenterDatumImplToJson(_$CenterDatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'center_name': instance.center_name,
      'status': instance.status,
      'city_name': instance.city_name,
      'areaname': instance.areaname,
      'hygene': instance.hygene,
      'logo_image': instance.logo_image,
      'profile_image': instance.profile_image,
      'service_id': instance.service_id,
      'details': instance.details,
    };
