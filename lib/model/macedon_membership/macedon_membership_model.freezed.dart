// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'macedon_membership_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MacedonMemebershipModel _$MacedonMemebershipModelFromJson(
    Map<String, dynamic> json) {
  return _MacedonMemebershipModel.fromJson(json);
}

/// @nodoc
mixin _$MacedonMemebershipModel {
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  Messages? get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MacedonMemebershipModelCopyWith<MacedonMemebershipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MacedonMemebershipModelCopyWith<$Res> {
  factory $MacedonMemebershipModelCopyWith(MacedonMemebershipModel value,
          $Res Function(MacedonMemebershipModel) then) =
      _$MacedonMemebershipModelCopyWithImpl<$Res, MacedonMemebershipModel>;
  @useResult
  $Res call({int? status, bool? error, Messages? messages});

  $MessagesCopyWith<$Res>? get messages;
}

/// @nodoc
class _$MacedonMemebershipModelCopyWithImpl<$Res,
        $Val extends MacedonMemebershipModel>
    implements $MacedonMemebershipModelCopyWith<$Res> {
  _$MacedonMemebershipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? messages = freezed,
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
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Messages?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessagesCopyWith<$Res>? get messages {
    if (_value.messages == null) {
      return null;
    }

    return $MessagesCopyWith<$Res>(_value.messages!, (value) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MacedonMemebershipModelImplCopyWith<$Res>
    implements $MacedonMemebershipModelCopyWith<$Res> {
  factory _$$MacedonMemebershipModelImplCopyWith(
          _$MacedonMemebershipModelImpl value,
          $Res Function(_$MacedonMemebershipModelImpl) then) =
      __$$MacedonMemebershipModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, bool? error, Messages? messages});

  @override
  $MessagesCopyWith<$Res>? get messages;
}

/// @nodoc
class __$$MacedonMemebershipModelImplCopyWithImpl<$Res>
    extends _$MacedonMemebershipModelCopyWithImpl<$Res,
        _$MacedonMemebershipModelImpl>
    implements _$$MacedonMemebershipModelImplCopyWith<$Res> {
  __$$MacedonMemebershipModelImplCopyWithImpl(
      _$MacedonMemebershipModelImpl _value,
      $Res Function(_$MacedonMemebershipModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$MacedonMemebershipModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Messages?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MacedonMemebershipModelImpl implements _MacedonMemebershipModel {
  const _$MacedonMemebershipModelImpl({this.status, this.error, this.messages});

  factory _$MacedonMemebershipModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MacedonMemebershipModelImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? error;
  @override
  final Messages? messages;

  @override
  String toString() {
    return 'MacedonMemebershipModel(status: $status, error: $error, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MacedonMemebershipModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, error, messages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MacedonMemebershipModelImplCopyWith<_$MacedonMemebershipModelImpl>
      get copyWith => __$$MacedonMemebershipModelImplCopyWithImpl<
          _$MacedonMemebershipModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MacedonMemebershipModelImplToJson(
      this,
    );
  }
}

abstract class _MacedonMemebershipModel implements MacedonMemebershipModel {
  const factory _MacedonMemebershipModel(
      {final int? status,
      final bool? error,
      final Messages? messages}) = _$MacedonMemebershipModelImpl;

  factory _MacedonMemebershipModel.fromJson(Map<String, dynamic> json) =
      _$MacedonMemebershipModelImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get error;
  @override
  Messages? get messages;
  @override
  @JsonKey(ignore: true)
  _$$MacedonMemebershipModelImplCopyWith<_$MacedonMemebershipModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return _Messages.fromJson(json);
}

/// @nodoc
mixin _$Messages {
  String? get responsecode => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesCopyWith<Messages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesCopyWith<$Res> {
  factory $MessagesCopyWith(Messages value, $Res Function(Messages) then) =
      _$MessagesCopyWithImpl<$Res, Messages>;
  @useResult
  $Res call({String? responsecode, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MessagesCopyWithImpl<$Res, $Val extends Messages>
    implements $MessagesCopyWith<$Res> {
  _$MessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responsecode = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      responsecode: freezed == responsecode
          ? _value.responsecode
          : responsecode // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$MessagesImplCopyWith<$Res>
    implements $MessagesCopyWith<$Res> {
  factory _$$MessagesImplCopyWith(
          _$MessagesImpl value, $Res Function(_$MessagesImpl) then) =
      __$$MessagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? responsecode, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MessagesImplCopyWithImpl<$Res>
    extends _$MessagesCopyWithImpl<$Res, _$MessagesImpl>
    implements _$$MessagesImplCopyWith<$Res> {
  __$$MessagesImplCopyWithImpl(
      _$MessagesImpl _value, $Res Function(_$MessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responsecode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MessagesImpl(
      responsecode: freezed == responsecode
          ? _value.responsecode
          : responsecode // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagesImpl implements _Messages {
  const _$MessagesImpl({this.responsecode, this.data});

  factory _$MessagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagesImplFromJson(json);

  @override
  final String? responsecode;
  @override
  final Data? data;

  @override
  String toString() {
    return 'Messages(responsecode: $responsecode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesImpl &&
            (identical(other.responsecode, responsecode) ||
                other.responsecode == responsecode) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, responsecode, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesImplCopyWith<_$MessagesImpl> get copyWith =>
      __$$MessagesImplCopyWithImpl<_$MessagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagesImplToJson(
      this,
    );
  }
}

abstract class _Messages implements Messages {
  const factory _Messages({final String? responsecode, final Data? data}) =
      _$MessagesImpl;

  factory _Messages.fromJson(Map<String, dynamic> json) =
      _$MessagesImpl.fromJson;

  @override
  String? get responsecode;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$MessagesImplCopyWith<_$MessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<MembershipDtl>? get membership_dtl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<MembershipDtl>? membership_dtl});
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
    Object? membership_dtl = freezed,
  }) {
    return _then(_value.copyWith(
      membership_dtl: freezed == membership_dtl
          ? _value.membership_dtl
          : membership_dtl // ignore: cast_nullable_to_non_nullable
              as List<MembershipDtl>?,
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
  $Res call({List<MembershipDtl>? membership_dtl});
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
    Object? membership_dtl = freezed,
  }) {
    return _then(_$DataImpl(
      membership_dtl: freezed == membership_dtl
          ? _value._membership_dtl
          : membership_dtl // ignore: cast_nullable_to_non_nullable
              as List<MembershipDtl>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({final List<MembershipDtl>? membership_dtl})
      : _membership_dtl = membership_dtl;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<MembershipDtl>? _membership_dtl;
  @override
  List<MembershipDtl>? get membership_dtl {
    final value = _membership_dtl;
    if (value == null) return null;
    if (_membership_dtl is EqualUnmodifiableListView) return _membership_dtl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(membership_dtl: $membership_dtl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._membership_dtl, _membership_dtl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_membership_dtl));

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
  const factory _Data({final List<MembershipDtl>? membership_dtl}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<MembershipDtl>? get membership_dtl;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MembershipDtl _$MembershipDtlFromJson(Map<String, dynamic> json) {
  return _MembershipDtl.fromJson(json);
}

/// @nodoc
mixin _$MembershipDtl {
  String? get package_id => throw _privateConstructorUsedError;
  String? get package_name => throw _privateConstructorUsedError;
  String? get package_duration => throw _privateConstructorUsedError;
  String? get package_price => throw _privateConstructorUsedError;
  String? get package_description => throw _privateConstructorUsedError;
  String? get service_category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembershipDtlCopyWith<MembershipDtl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipDtlCopyWith<$Res> {
  factory $MembershipDtlCopyWith(
          MembershipDtl value, $Res Function(MembershipDtl) then) =
      _$MembershipDtlCopyWithImpl<$Res, MembershipDtl>;
  @useResult
  $Res call(
      {String? package_id,
      String? package_name,
      String? package_duration,
      String? package_price,
      String? package_description,
      String? service_category});
}

/// @nodoc
class _$MembershipDtlCopyWithImpl<$Res, $Val extends MembershipDtl>
    implements $MembershipDtlCopyWith<$Res> {
  _$MembershipDtlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package_id = freezed,
    Object? package_name = freezed,
    Object? package_duration = freezed,
    Object? package_price = freezed,
    Object? package_description = freezed,
    Object? service_category = freezed,
  }) {
    return _then(_value.copyWith(
      package_id: freezed == package_id
          ? _value.package_id
          : package_id // ignore: cast_nullable_to_non_nullable
              as String?,
      package_name: freezed == package_name
          ? _value.package_name
          : package_name // ignore: cast_nullable_to_non_nullable
              as String?,
      package_duration: freezed == package_duration
          ? _value.package_duration
          : package_duration // ignore: cast_nullable_to_non_nullable
              as String?,
      package_price: freezed == package_price
          ? _value.package_price
          : package_price // ignore: cast_nullable_to_non_nullable
              as String?,
      package_description: freezed == package_description
          ? _value.package_description
          : package_description // ignore: cast_nullable_to_non_nullable
              as String?,
      service_category: freezed == service_category
          ? _value.service_category
          : service_category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MembershipDtlImplCopyWith<$Res>
    implements $MembershipDtlCopyWith<$Res> {
  factory _$$MembershipDtlImplCopyWith(
          _$MembershipDtlImpl value, $Res Function(_$MembershipDtlImpl) then) =
      __$$MembershipDtlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? package_id,
      String? package_name,
      String? package_duration,
      String? package_price,
      String? package_description,
      String? service_category});
}

/// @nodoc
class __$$MembershipDtlImplCopyWithImpl<$Res>
    extends _$MembershipDtlCopyWithImpl<$Res, _$MembershipDtlImpl>
    implements _$$MembershipDtlImplCopyWith<$Res> {
  __$$MembershipDtlImplCopyWithImpl(
      _$MembershipDtlImpl _value, $Res Function(_$MembershipDtlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package_id = freezed,
    Object? package_name = freezed,
    Object? package_duration = freezed,
    Object? package_price = freezed,
    Object? package_description = freezed,
    Object? service_category = freezed,
  }) {
    return _then(_$MembershipDtlImpl(
      package_id: freezed == package_id
          ? _value.package_id
          : package_id // ignore: cast_nullable_to_non_nullable
              as String?,
      package_name: freezed == package_name
          ? _value.package_name
          : package_name // ignore: cast_nullable_to_non_nullable
              as String?,
      package_duration: freezed == package_duration
          ? _value.package_duration
          : package_duration // ignore: cast_nullable_to_non_nullable
              as String?,
      package_price: freezed == package_price
          ? _value.package_price
          : package_price // ignore: cast_nullable_to_non_nullable
              as String?,
      package_description: freezed == package_description
          ? _value.package_description
          : package_description // ignore: cast_nullable_to_non_nullable
              as String?,
      service_category: freezed == service_category
          ? _value.service_category
          : service_category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipDtlImpl implements _MembershipDtl {
  const _$MembershipDtlImpl(
      {this.package_id,
      this.package_name,
      this.package_duration,
      this.package_price,
      this.package_description,
      this.service_category});

  factory _$MembershipDtlImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipDtlImplFromJson(json);

  @override
  final String? package_id;
  @override
  final String? package_name;
  @override
  final String? package_duration;
  @override
  final String? package_price;
  @override
  final String? package_description;
  @override
  final String? service_category;

  @override
  String toString() {
    return 'MembershipDtl(package_id: $package_id, package_name: $package_name, package_duration: $package_duration, package_price: $package_price, package_description: $package_description, service_category: $service_category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipDtlImpl &&
            (identical(other.package_id, package_id) ||
                other.package_id == package_id) &&
            (identical(other.package_name, package_name) ||
                other.package_name == package_name) &&
            (identical(other.package_duration, package_duration) ||
                other.package_duration == package_duration) &&
            (identical(other.package_price, package_price) ||
                other.package_price == package_price) &&
            (identical(other.package_description, package_description) ||
                other.package_description == package_description) &&
            (identical(other.service_category, service_category) ||
                other.service_category == service_category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, package_id, package_name,
      package_duration, package_price, package_description, service_category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipDtlImplCopyWith<_$MembershipDtlImpl> get copyWith =>
      __$$MembershipDtlImplCopyWithImpl<_$MembershipDtlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipDtlImplToJson(
      this,
    );
  }
}

abstract class _MembershipDtl implements MembershipDtl {
  const factory _MembershipDtl(
      {final String? package_id,
      final String? package_name,
      final String? package_duration,
      final String? package_price,
      final String? package_description,
      final String? service_category}) = _$MembershipDtlImpl;

  factory _MembershipDtl.fromJson(Map<String, dynamic> json) =
      _$MembershipDtlImpl.fromJson;

  @override
  String? get package_id;
  @override
  String? get package_name;
  @override
  String? get package_duration;
  @override
  String? get package_price;
  @override
  String? get package_description;
  @override
  String? get service_category;
  @override
  @JsonKey(ignore: true)
  _$$MembershipDtlImplCopyWith<_$MembershipDtlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
