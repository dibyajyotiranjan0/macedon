// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return _SearchModel.fromJson(json);
}

/// @nodoc
mixin _$SearchModel {
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res, SearchModel>;
  @useResult
  $Res call({int? status, bool? error, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res, $Val extends SearchModel>
    implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchModelImplCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelImplCopyWith(
          _$SearchModelImpl value, $Res Function(_$SearchModelImpl) then) =
      __$$SearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, bool? error, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SearchModelImplCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelImpl>
    implements _$$SearchModelImplCopyWith<$Res> {
  __$$SearchModelImplCopyWithImpl(
      _$SearchModelImpl _value, $Res Function(_$SearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchModelImpl implements _SearchModel {
  const _$SearchModelImpl({this.status, this.error, this.data});

  factory _$SearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchModelImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? error;
  @override
  final Data? data;

  @override
  String toString() {
    return 'SearchModel(status: $status, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, error, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      __$$SearchModelImplCopyWithImpl<_$SearchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchModelImplToJson(
      this,
    );
  }
}

abstract class _SearchModel implements SearchModel {
  const factory _SearchModel(
      {final int? status,
      final bool? error,
      final Data? data}) = _$SearchModelImpl;

  factory _SearchModel.fromJson(Map<String, dynamic> json) =
      _$SearchModelImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get error;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<CenterDatum>? get center_data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<CenterDatum>? center_data});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center_data = freezed,
  }) {
    return _then(_value.copyWith(
      center_data: freezed == center_data
          ? _value.center_data
          : center_data // ignore: cast_nullable_to_non_nullable
              as List<CenterDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CenterDatum>? center_data});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center_data = freezed,
  }) {
    return _then(_$DataImpl(
      center_data: freezed == center_data
          ? _value._center_data
          : center_data // ignore: cast_nullable_to_non_nullable
              as List<CenterDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({final List<CenterDatum>? center_data})
      : _center_data = center_data;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<CenterDatum>? _center_data;
  @override
  List<CenterDatum>? get center_data {
    final value = _center_data;
    if (value == null) return null;
    if (_center_data is EqualUnmodifiableListView) return _center_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(center_data: $center_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._center_data, _center_data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_center_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final List<CenterDatum>? center_data}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<CenterDatum>? get center_data;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CenterDatum _$CenterDatumFromJson(Map<String, dynamic> json) {
  return _CenterDatum.fromJson(json);
}

/// @nodoc
mixin _$CenterDatum {
  String? get id => throw _privateConstructorUsedError;
  String? get center_name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get city_name => throw _privateConstructorUsedError;
  String? get areaname => throw _privateConstructorUsedError;
  dynamic get hygene => throw _privateConstructorUsedError;
  dynamic get logo_image => throw _privateConstructorUsedError;
  String? get profile_image => throw _privateConstructorUsedError;
  String? get service_id => throw _privateConstructorUsedError;
  dynamic get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CenterDatumCopyWith<CenterDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterDatumCopyWith<$Res> {
  factory $CenterDatumCopyWith(
          CenterDatum value, $Res Function(CenterDatum) then) =
      _$CenterDatumCopyWithImpl<$Res, CenterDatum>;
  @useResult
  $Res call(
      {String? id,
      String? center_name,
      String? status,
      String? city_name,
      String? areaname,
      dynamic hygene,
      dynamic logo_image,
      String? profile_image,
      String? service_id,
      dynamic details});
}

/// @nodoc
class _$CenterDatumCopyWithImpl<$Res, $Val extends CenterDatum>
    implements $CenterDatumCopyWith<$Res> {
  _$CenterDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? center_name = freezed,
    Object? status = freezed,
    Object? city_name = freezed,
    Object? areaname = freezed,
    Object? hygene = freezed,
    Object? logo_image = freezed,
    Object? profile_image = freezed,
    Object? service_id = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      center_name: freezed == center_name
          ? _value.center_name
          : center_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      city_name: freezed == city_name
          ? _value.city_name
          : city_name // ignore: cast_nullable_to_non_nullable
              as String?,
      areaname: freezed == areaname
          ? _value.areaname
          : areaname // ignore: cast_nullable_to_non_nullable
              as String?,
      hygene: freezed == hygene
          ? _value.hygene
          : hygene // ignore: cast_nullable_to_non_nullable
              as dynamic,
      logo_image: freezed == logo_image
          ? _value.logo_image
          : logo_image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
      service_id: freezed == service_id
          ? _value.service_id
          : service_id // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CenterDatumImplCopyWith<$Res>
    implements $CenterDatumCopyWith<$Res> {
  factory _$$CenterDatumImplCopyWith(
          _$CenterDatumImpl value, $Res Function(_$CenterDatumImpl) then) =
      __$$CenterDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? center_name,
      String? status,
      String? city_name,
      String? areaname,
      dynamic hygene,
      dynamic logo_image,
      String? profile_image,
      String? service_id,
      dynamic details});
}

/// @nodoc
class __$$CenterDatumImplCopyWithImpl<$Res>
    extends _$CenterDatumCopyWithImpl<$Res, _$CenterDatumImpl>
    implements _$$CenterDatumImplCopyWith<$Res> {
  __$$CenterDatumImplCopyWithImpl(
      _$CenterDatumImpl _value, $Res Function(_$CenterDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? center_name = freezed,
    Object? status = freezed,
    Object? city_name = freezed,
    Object? areaname = freezed,
    Object? hygene = freezed,
    Object? logo_image = freezed,
    Object? profile_image = freezed,
    Object? service_id = freezed,
    Object? details = freezed,
  }) {
    return _then(_$CenterDatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      center_name: freezed == center_name
          ? _value.center_name
          : center_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      city_name: freezed == city_name
          ? _value.city_name
          : city_name // ignore: cast_nullable_to_non_nullable
              as String?,
      areaname: freezed == areaname
          ? _value.areaname
          : areaname // ignore: cast_nullable_to_non_nullable
              as String?,
      hygene: freezed == hygene
          ? _value.hygene
          : hygene // ignore: cast_nullable_to_non_nullable
              as dynamic,
      logo_image: freezed == logo_image
          ? _value.logo_image
          : logo_image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
      service_id: freezed == service_id
          ? _value.service_id
          : service_id // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CenterDatumImpl implements _CenterDatum {
  const _$CenterDatumImpl(
      {this.id,
      this.center_name,
      this.status,
      this.city_name,
      this.areaname,
      this.hygene,
      this.logo_image,
      this.profile_image,
      this.service_id,
      this.details});

  factory _$CenterDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterDatumImplFromJson(json);

  @override
  final String? id;
  @override
  final String? center_name;
  @override
  final String? status;
  @override
  final String? city_name;
  @override
  final String? areaname;
  @override
  final dynamic hygene;
  @override
  final dynamic logo_image;
  @override
  final String? profile_image;
  @override
  final String? service_id;
  @override
  final dynamic details;

  @override
  String toString() {
    return 'CenterDatum(id: $id, center_name: $center_name, status: $status, city_name: $city_name, areaname: $areaname, hygene: $hygene, logo_image: $logo_image, profile_image: $profile_image, service_id: $service_id, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.center_name, center_name) ||
                other.center_name == center_name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.city_name, city_name) ||
                other.city_name == city_name) &&
            (identical(other.areaname, areaname) ||
                other.areaname == areaname) &&
            const DeepCollectionEquality().equals(other.hygene, hygene) &&
            const DeepCollectionEquality()
                .equals(other.logo_image, logo_image) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image) &&
            (identical(other.service_id, service_id) ||
                other.service_id == service_id) &&
            const DeepCollectionEquality().equals(other.details, details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      center_name,
      status,
      city_name,
      areaname,
      const DeepCollectionEquality().hash(hygene),
      const DeepCollectionEquality().hash(logo_image),
      profile_image,
      service_id,
      const DeepCollectionEquality().hash(details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterDatumImplCopyWith<_$CenterDatumImpl> get copyWith =>
      __$$CenterDatumImplCopyWithImpl<_$CenterDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterDatumImplToJson(
      this,
    );
  }
}

abstract class _CenterDatum implements CenterDatum {
  const factory _CenterDatum(
      {final String? id,
      final String? center_name,
      final String? status,
      final String? city_name,
      final String? areaname,
      final dynamic hygene,
      final dynamic logo_image,
      final String? profile_image,
      final String? service_id,
      final dynamic details}) = _$CenterDatumImpl;

  factory _CenterDatum.fromJson(Map<String, dynamic> json) =
      _$CenterDatumImpl.fromJson;

  @override
  String? get id;
  @override
  String? get center_name;
  @override
  String? get status;
  @override
  String? get city_name;
  @override
  String? get areaname;
  @override
  dynamic get hygene;
  @override
  dynamic get logo_image;
  @override
  String? get profile_image;
  @override
  String? get service_id;
  @override
  dynamic get details;
  @override
  @JsonKey(ignore: true)
  _$$CenterDatumImplCopyWith<_$CenterDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
