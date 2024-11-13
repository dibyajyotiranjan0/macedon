// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allcity_mdel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllCityModel _$AllCityModelFromJson(Map<String, dynamic> json) {
  return _AllCityModel.fromJson(json);
}

/// @nodoc
mixin _$AllCityModel {
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllCityModelCopyWith<AllCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCityModelCopyWith<$Res> {
  factory $AllCityModelCopyWith(
          AllCityModel value, $Res Function(AllCityModel) then) =
      _$AllCityModelCopyWithImpl<$Res, AllCityModel>;
  @useResult
  $Res call({int? status, bool? error, String? message, List<Datum>? data});
}

/// @nodoc
class _$AllCityModelCopyWithImpl<$Res, $Val extends AllCityModel>
    implements $AllCityModelCopyWith<$Res> {
  _$AllCityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? message = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllCityModelImplCopyWith<$Res>
    implements $AllCityModelCopyWith<$Res> {
  factory _$$AllCityModelImplCopyWith(
          _$AllCityModelImpl value, $Res Function(_$AllCityModelImpl) then) =
      __$$AllCityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, bool? error, String? message, List<Datum>? data});
}

/// @nodoc
class __$$AllCityModelImplCopyWithImpl<$Res>
    extends _$AllCityModelCopyWithImpl<$Res, _$AllCityModelImpl>
    implements _$$AllCityModelImplCopyWith<$Res> {
  __$$AllCityModelImplCopyWithImpl(
      _$AllCityModelImpl _value, $Res Function(_$AllCityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AllCityModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllCityModelImpl implements _AllCityModel {
  const _$AllCityModelImpl(
      {this.status, this.error, this.message, final List<Datum>? data})
      : _data = data;

  factory _$AllCityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllCityModelImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? error;
  @override
  final String? message;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllCityModel(status: $status, error: $error, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllCityModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, error, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllCityModelImplCopyWith<_$AllCityModelImpl> get copyWith =>
      __$$AllCityModelImplCopyWithImpl<_$AllCityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllCityModelImplToJson(
      this,
    );
  }
}

abstract class _AllCityModel implements AllCityModel {
  const factory _AllCityModel(
      {final int? status,
      final bool? error,
      final String? message,
      final List<Datum>? data}) = _$AllCityModelImpl;

  factory _AllCityModel.fromJson(Map<String, dynamic> json) =
      _$AllCityModelImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get error;
  @override
  String? get message;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AllCityModelImplCopyWith<_$AllCityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String? get city_id => throw _privateConstructorUsedError;
  String? get city_name => throw _privateConstructorUsedError;
  List<Area>? get areas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call({String? city_id, String? city_name, List<Area>? areas});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city_id = freezed,
    Object? city_name = freezed,
    Object? areas = freezed,
  }) {
    return _then(_value.copyWith(
      city_id: freezed == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as String?,
      city_name: freezed == city_name
          ? _value.city_name
          : city_name // ignore: cast_nullable_to_non_nullable
              as String?,
      areas: freezed == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? city_id, String? city_name, List<Area>? areas});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city_id = freezed,
    Object? city_name = freezed,
    Object? areas = freezed,
  }) {
    return _then(_$DatumImpl(
      city_id: freezed == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as String?,
      city_name: freezed == city_name
          ? _value.city_name
          : city_name // ignore: cast_nullable_to_non_nullable
              as String?,
      areas: freezed == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl({this.city_id, this.city_name, final List<Area>? areas})
      : _areas = areas;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final String? city_id;
  @override
  final String? city_name;
  final List<Area>? _areas;
  @override
  List<Area>? get areas {
    final value = _areas;
    if (value == null) return null;
    if (_areas is EqualUnmodifiableListView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Datum(city_id: $city_id, city_name: $city_name, areas: $areas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.city_id, city_id) || other.city_id == city_id) &&
            (identical(other.city_name, city_name) ||
                other.city_name == city_name) &&
            const DeepCollectionEquality().equals(other._areas, _areas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city_id, city_name,
      const DeepCollectionEquality().hash(_areas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final String? city_id,
      final String? city_name,
      final List<Area>? areas}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  String? get city_id;
  @override
  String? get city_name;
  @override
  List<Area>? get areas;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  String? get area_id => throw _privateConstructorUsedError;
  String? get areaname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res, Area>;
  @useResult
  $Res call({String? area_id, String? areaname});
}

/// @nodoc
class _$AreaCopyWithImpl<$Res, $Val extends Area>
    implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area_id = freezed,
    Object? areaname = freezed,
  }) {
    return _then(_value.copyWith(
      area_id: freezed == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as String?,
      areaname: freezed == areaname
          ? _value.areaname
          : areaname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaImplCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$AreaImplCopyWith(
          _$AreaImpl value, $Res Function(_$AreaImpl) then) =
      __$$AreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? area_id, String? areaname});
}

/// @nodoc
class __$$AreaImplCopyWithImpl<$Res>
    extends _$AreaCopyWithImpl<$Res, _$AreaImpl>
    implements _$$AreaImplCopyWith<$Res> {
  __$$AreaImplCopyWithImpl(_$AreaImpl _value, $Res Function(_$AreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area_id = freezed,
    Object? areaname = freezed,
  }) {
    return _then(_$AreaImpl(
      area_id: freezed == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as String?,
      areaname: freezed == areaname
          ? _value.areaname
          : areaname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaImpl implements _Area {
  const _$AreaImpl({this.area_id, this.areaname});

  factory _$AreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaImplFromJson(json);

  @override
  final String? area_id;
  @override
  final String? areaname;

  @override
  String toString() {
    return 'Area(area_id: $area_id, areaname: $areaname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaImpl &&
            (identical(other.area_id, area_id) || other.area_id == area_id) &&
            (identical(other.areaname, areaname) ||
                other.areaname == areaname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, area_id, areaname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      __$$AreaImplCopyWithImpl<_$AreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaImplToJson(
      this,
    );
  }
}

abstract class _Area implements Area {
  const factory _Area({final String? area_id, final String? areaname}) =
      _$AreaImpl;

  factory _Area.fromJson(Map<String, dynamic> json) = _$AreaImpl.fromJson;

  @override
  String? get area_id;
  @override
  String? get areaname;
  @override
  @JsonKey(ignore: true)
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
