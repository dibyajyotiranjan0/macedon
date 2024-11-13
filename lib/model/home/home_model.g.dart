// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      messages: json['messages'] == null
          ? null
          : Messages.fromJson(json['messages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
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
      testimonial_dtl: (json['testimonial_dtl'] as List<dynamic>?)
          ?.map((e) => TestimonialDtl.fromJson(e as Map<String, dynamic>))
          .toList(),
      banner_dtl: (json['banner_dtl'] as List<dynamic>?)
          ?.map((e) => BannerDtl.fromJson(e as Map<String, dynamic>))
          .toList(),
      Service_List: (json['Service_List'] as List<dynamic>?)
          ?.map((e) => ServiceList.fromJson(e as Map<String, dynamic>))
          .toList(),
      service_data: (json['service_data'] as List<dynamic>?)
          ?.map((e) => ServiceDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'testimonial_dtl': instance.testimonial_dtl,
      'banner_dtl': instance.banner_dtl,
      'Service_List': instance.Service_List,
      'service_data': instance.service_data,
    };

_$BannerDtlImpl _$$BannerDtlImplFromJson(Map<String, dynamic> json) =>
    _$BannerDtlImpl(
      banner_id: json['banner_id'] as String?,
      orderby: json['orderby'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$BannerDtlImplToJson(_$BannerDtlImpl instance) =>
    <String, dynamic>{
      'banner_id': instance.banner_id,
      'orderby': instance.orderby,
      'image': instance.image,
    };

_$ServiceDatumImpl _$$ServiceDatumImplFromJson(Map<String, dynamic> json) =>
    _$ServiceDatumImpl(
      service_id: json['service_id'] as String?,
      service_name: json['service_name'] as String?,
      CenterDtls: (json['CenterDtls'] as List<dynamic>?)
          ?.map((e) => CenterDtl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServiceDatumImplToJson(_$ServiceDatumImpl instance) =>
    <String, dynamic>{
      'service_id': instance.service_id,
      'service_name': instance.service_name,
      'CenterDtls': instance.CenterDtls,
    };

_$CenterDtlImpl _$$CenterDtlImplFromJson(Map<String, dynamic> json) =>
    _$CenterDtlImpl(
      id: json['id'] as String?,
      center_name: json['center_name'] as String?,
      centerimage: json['centerimage'] as String?,
      city_id: json['city_id'] as String?,
      city_name: json['city_name'] as String?,
    );

Map<String, dynamic> _$$CenterDtlImplToJson(_$CenterDtlImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'center_name': instance.center_name,
      'centerimage': instance.centerimage,
      'city_id': instance.city_id,
      'city_name': instance.city_name,
    };

_$ServiceListImpl _$$ServiceListImplFromJson(Map<String, dynamic> json) =>
    _$ServiceListImpl(
      service_master_id: json['service_master_id'] as String?,
      service_master_name: json['service_master_name'] as String?,
      image: json['image'] as String?,
      service_type: json['service_type'] as String?,
      status: json['status'] as String?,
      center_service: (json['center_service'] as List<dynamic>?)
          ?.map((e) => CenterService.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServiceListImplToJson(_$ServiceListImpl instance) =>
    <String, dynamic>{
      'service_master_id': instance.service_master_id,
      'service_master_name': instance.service_master_name,
      'image': instance.image,
      'service_type': instance.service_type,
      'status': instance.status,
      'center_service': instance.center_service,
    };

_$CenterServiceImpl _$$CenterServiceImplFromJson(Map<String, dynamic> json) =>
    _$CenterServiceImpl(
      center_id: json['center_id'] as String?,
      profile_image: json['profile_image'] as String?,
      center_name: json['center_name'] as String?,
      city_id: json['city_id'] as String?,
      city_name: json['city_name'] as String?,
      area_id: json['area_id'] as String?,
      areaname: json['areaname'] as String?,
    );

Map<String, dynamic> _$$CenterServiceImplToJson(_$CenterServiceImpl instance) =>
    <String, dynamic>{
      'center_id': instance.center_id,
      'profile_image': instance.profile_image,
      'center_name': instance.center_name,
      'city_id': instance.city_id,
      'city_name': instance.city_name,
      'area_id': instance.area_id,
      'areaname': instance.areaname,
    };

_$TestimonialDtlImpl _$$TestimonialDtlImplFromJson(Map<String, dynamic> json) =>
    _$TestimonialDtlImpl(
      testimonial_id: json['testimonial_id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$TestimonialDtlImplToJson(
        _$TestimonialDtlImpl instance) =>
    <String, dynamic>{
      'testimonial_id': instance.testimonial_id,
      'name': instance.name,
      'image': instance.image,
      'message': instance.message,
    };
