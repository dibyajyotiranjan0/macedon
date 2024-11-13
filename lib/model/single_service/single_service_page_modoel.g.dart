// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_service_page_modoel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleServicePageModelImpl _$$SingleServicePageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleServicePageModelImpl(
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      messages: json['messages'] == null
          ? null
          : Messages.fromJson(json['messages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SingleServicePageModelImplToJson(
        _$SingleServicePageModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'messages': instance.messages,
    };

_$MessagesImpl _$$MessagesImplFromJson(Map<String, dynamic> json) =>
    _$MessagesImpl(
      responsecode: json['responsecode'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessagesImplToJson(_$MessagesImpl instance) =>
    <String, dynamic>{
      'responsecode': instance.responsecode,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      Center_Data: (json['Center_Data'] as List<dynamic>?)
          ?.map((e) => CenterDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'Center_Data': instance.Center_Data,
    };

_$CenterDatumImpl _$$CenterDatumImplFromJson(Map<String, dynamic> json) =>
    _$CenterDatumImpl(
      center_id: json['center_id'] as String?,
      center_name: json['center_name'] as String?,
      logo_image: json['logo_image'] as String?,
      hygene: json['hygene'] as String?,
      centerimage: json['centerimage'] as String?,
      city_id: json['city_id'] as String?,
      city_name: json['city_name'] as String?,
      area_id: json['area_id'] as String?,
      areaname: json['areaname'] as String?,
      service_master_id: json['service_master_id'] as String?,
      service_master_name: json['service_master_name'] as String?,
      email: json['email'] as String?,
      contact_no: json['contact_no'] as String?,
    );

Map<String, dynamic> _$$CenterDatumImplToJson(_$CenterDatumImpl instance) =>
    <String, dynamic>{
      'center_id': instance.center_id,
      'center_name': instance.center_name,
      'logo_image': instance.logo_image,
      'hygene': instance.hygene,
      'centerimage': instance.centerimage,
      'city_id': instance.city_id,
      'city_name': instance.city_name,
      'area_id': instance.area_id,
      'areaname': instance.areaname,
      'service_master_id': instance.service_master_id,
      'service_master_name': instance.service_master_name,
      'email': instance.email,
      'contact_no': instance.contact_no,
    };
