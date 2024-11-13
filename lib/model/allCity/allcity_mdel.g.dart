// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allcity_mdel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllCityModelImpl _$$AllCityModelImplFromJson(Map<String, dynamic> json) =>
    _$AllCityModelImpl(
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllCityModelImplToJson(_$AllCityModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      city_id: json['city_id'] as String?,
      city_name: json['city_name'] as String?,
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'city_id': instance.city_id,
      'city_name': instance.city_name,
      'areas': instance.areas,
    };

_$AreaImpl _$$AreaImplFromJson(Map<String, dynamic> json) => _$AreaImpl(
      area_id: json['area_id'] as String?,
      areaname: json['areaname'] as String?,
    );

Map<String, dynamic> _$$AreaImplToJson(_$AreaImpl instance) =>
    <String, dynamic>{
      'area_id': instance.area_id,
      'areaname': instance.areaname,
    };
