// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allservice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllServiceModel _$AllServiceModelFromJson(Map<String, dynamic> json) {
  return _AllServiceModel.fromJson(json);
}

/// @nodoc
mixin _$AllServiceModel {
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ServieDatum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllServiceModelCopyWith<AllServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllServiceModelCopyWith<$Res> {
  factory $AllServiceModelCopyWith(
          AllServiceModel value, $Res Function(AllServiceModel) then) =
      _$AllServiceModelCopyWithImpl<$Res, AllServiceModel>;
  @useResult
  $Res call(
      {int? status, bool? error, String? message, List<ServieDatum>? data});
}

/// @nodoc
class _$AllServiceModelCopyWithImpl<$Res, $Val extends AllServiceModel>
    implements $AllServiceModelCopyWith<$Res> {
  _$AllServiceModelCopyWithImpl(this._value, this._then);

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
              as List<ServieDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllServiceModelImplCopyWith<$Res>
    implements $AllServiceModelCopyWith<$Res> {
  factory _$$AllServiceModelImplCopyWith(_$AllServiceModelImpl value,
          $Res Function(_$AllServiceModelImpl) then) =
      __$$AllServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status, bool? error, String? message, List<ServieDatum>? data});
}

/// @nodoc
class __$$AllServiceModelImplCopyWithImpl<$Res>
    extends _$AllServiceModelCopyWithImpl<$Res, _$AllServiceModelImpl>
    implements _$$AllServiceModelImplCopyWith<$Res> {
  __$$AllServiceModelImplCopyWithImpl(
      _$AllServiceModelImpl _value, $Res Function(_$AllServiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AllServiceModelImpl(
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
              as List<ServieDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllServiceModelImpl implements _AllServiceModel {
  const _$AllServiceModelImpl(
      {this.status, this.error, this.message, final List<ServieDatum>? data})
      : _data = data;

  factory _$AllServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllServiceModelImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? error;
  @override
  final String? message;
  final List<ServieDatum>? _data;
  @override
  List<ServieDatum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllServiceModel(status: $status, error: $error, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllServiceModelImpl &&
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
  _$$AllServiceModelImplCopyWith<_$AllServiceModelImpl> get copyWith =>
      __$$AllServiceModelImplCopyWithImpl<_$AllServiceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllServiceModelImplToJson(
      this,
    );
  }
}

abstract class _AllServiceModel implements AllServiceModel {
  const factory _AllServiceModel(
      {final int? status,
      final bool? error,
      final String? message,
      final List<ServieDatum>? data}) = _$AllServiceModelImpl;

  factory _AllServiceModel.fromJson(Map<String, dynamic> json) =
      _$AllServiceModelImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get error;
  @override
  String? get message;
  @override
  List<ServieDatum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AllServiceModelImplCopyWith<_$AllServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServieDatum _$ServieDatumFromJson(Map<String, dynamic> json) {
  return _ServieDatum.fromJson(json);
}

/// @nodoc
mixin _$ServieDatum {
  String? get service_master_id => throw _privateConstructorUsedError;
  String? get service_master_name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServieDatumCopyWith<ServieDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServieDatumCopyWith<$Res> {
  factory $ServieDatumCopyWith(
          ServieDatum value, $Res Function(ServieDatum) then) =
      _$ServieDatumCopyWithImpl<$Res, ServieDatum>;
  @useResult
  $Res call(
      {String? service_master_id, String? service_master_name, String? image});
}

/// @nodoc
class _$ServieDatumCopyWithImpl<$Res, $Val extends ServieDatum>
    implements $ServieDatumCopyWith<$Res> {
  _$ServieDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service_master_id = freezed,
    Object? service_master_name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      service_master_id: freezed == service_master_id
          ? _value.service_master_id
          : service_master_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_master_name: freezed == service_master_name
          ? _value.service_master_name
          : service_master_name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServieDatumImplCopyWith<$Res>
    implements $ServieDatumCopyWith<$Res> {
  factory _$$ServieDatumImplCopyWith(
          _$ServieDatumImpl value, $Res Function(_$ServieDatumImpl) then) =
      __$$ServieDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? service_master_id, String? service_master_name, String? image});
}

/// @nodoc
class __$$ServieDatumImplCopyWithImpl<$Res>
    extends _$ServieDatumCopyWithImpl<$Res, _$ServieDatumImpl>
    implements _$$ServieDatumImplCopyWith<$Res> {
  __$$ServieDatumImplCopyWithImpl(
      _$ServieDatumImpl _value, $Res Function(_$ServieDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service_master_id = freezed,
    Object? service_master_name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ServieDatumImpl(
      service_master_id: freezed == service_master_id
          ? _value.service_master_id
          : service_master_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_master_name: freezed == service_master_name
          ? _value.service_master_name
          : service_master_name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServieDatumImpl implements _ServieDatum {
  const _$ServieDatumImpl(
      {this.service_master_id, this.service_master_name, this.image});

  factory _$ServieDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServieDatumImplFromJson(json);

  @override
  final String? service_master_id;
  @override
  final String? service_master_name;
  @override
  final String? image;

  @override
  String toString() {
    return 'ServieDatum(service_master_id: $service_master_id, service_master_name: $service_master_name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServieDatumImpl &&
            (identical(other.service_master_id, service_master_id) ||
                other.service_master_id == service_master_id) &&
            (identical(other.service_master_name, service_master_name) ||
                other.service_master_name == service_master_name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, service_master_id, service_master_name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServieDatumImplCopyWith<_$ServieDatumImpl> get copyWith =>
      __$$ServieDatumImplCopyWithImpl<_$ServieDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServieDatumImplToJson(
      this,
    );
  }
}

abstract class _ServieDatum implements ServieDatum {
  const factory _ServieDatum(
      {final String? service_master_id,
      final String? service_master_name,
      final String? image}) = _$ServieDatumImpl;

  factory _ServieDatum.fromJson(Map<String, dynamic> json) =
      _$ServieDatumImpl.fromJson;

  @override
  String? get service_master_id;
  @override
  String? get service_master_name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ServieDatumImplCopyWith<_$ServieDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
