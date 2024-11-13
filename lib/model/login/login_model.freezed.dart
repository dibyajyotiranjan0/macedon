// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
mixin _$LoginModel {
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  Messages? get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res, LoginModel>;
  @useResult
  $Res call({int? status, bool? error, Messages? messages});

  $MessagesCopyWith<$Res>? get messages;
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res, $Val extends LoginModel>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginModelImplCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$$LoginModelImplCopyWith(
          _$LoginModelImpl value, $Res Function(_$LoginModelImpl) then) =
      __$$LoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, bool? error, Messages? messages});

  @override
  $MessagesCopyWith<$Res>? get messages;
}

/// @nodoc
class __$$LoginModelImplCopyWithImpl<$Res>
    extends _$LoginModelCopyWithImpl<$Res, _$LoginModelImpl>
    implements _$$LoginModelImplCopyWith<$Res> {
  __$$LoginModelImplCopyWithImpl(
      _$LoginModelImpl _value, $Res Function(_$LoginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$LoginModelImpl(
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
class _$LoginModelImpl implements _LoginModel {
  const _$LoginModelImpl({this.status, this.error, this.messages});

  factory _$LoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginModelImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? error;
  @override
  final Messages? messages;

  @override
  String toString() {
    return 'LoginModel(status: $status, error: $error, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginModelImpl &&
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
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      __$$LoginModelImplCopyWithImpl<_$LoginModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginModelImplToJson(
      this,
    );
  }
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel(
      {final int? status,
      final bool? error,
      final Messages? messages}) = _$LoginModelImpl;

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$LoginModelImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get error;
  @override
  Messages? get messages;
  @override
  @JsonKey(ignore: true)
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return _Messages.fromJson(json);
}

/// @nodoc
mixin _$Messages {
  String? get responsecode => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;

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
  $Res call({String? responsecode, Status? status});

  $StatusCopyWith<$Res>? get status;
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
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      responsecode: freezed == responsecode
          ? _value.responsecode
          : responsecode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
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
  $Res call({String? responsecode, Status? status});

  @override
  $StatusCopyWith<$Res>? get status;
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
    Object? status = freezed,
  }) {
    return _then(_$MessagesImpl(
      responsecode: freezed == responsecode
          ? _value.responsecode
          : responsecode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagesImpl implements _Messages {
  const _$MessagesImpl({this.responsecode, this.status});

  factory _$MessagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagesImplFromJson(json);

  @override
  final String? responsecode;
  @override
  final Status? status;

  @override
  String toString() {
    return 'Messages(responsecode: $responsecode, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesImpl &&
            (identical(other.responsecode, responsecode) ||
                other.responsecode == responsecode) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, responsecode, status);

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
  const factory _Messages({final String? responsecode, final Status? status}) =
      _$MessagesImpl;

  factory _Messages.fromJson(Map<String, dynamic> json) =
      _$MessagesImpl.fromJson;

  @override
  String? get responsecode;
  @override
  Status? get status;
  @override
  @JsonKey(ignore: true)
  _$$MessagesImplCopyWith<_$MessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  String? get contact_otp => throw _privateConstructorUsedError;
  int? get login_otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({String? contact_otp, int? login_otp});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact_otp = freezed,
    Object? login_otp = freezed,
  }) {
    return _then(_value.copyWith(
      contact_otp: freezed == contact_otp
          ? _value.contact_otp
          : contact_otp // ignore: cast_nullable_to_non_nullable
              as String?,
      login_otp: freezed == login_otp
          ? _value.login_otp
          : login_otp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? contact_otp, int? login_otp});
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact_otp = freezed,
    Object? login_otp = freezed,
  }) {
    return _then(_$StatusImpl(
      contact_otp: freezed == contact_otp
          ? _value.contact_otp
          : contact_otp // ignore: cast_nullable_to_non_nullable
              as String?,
      login_otp: freezed == login_otp
          ? _value.login_otp
          : login_otp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusImpl implements _Status {
  const _$StatusImpl({this.contact_otp, this.login_otp});

  factory _$StatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusImplFromJson(json);

  @override
  final String? contact_otp;
  @override
  final int? login_otp;

  @override
  String toString() {
    return 'Status(contact_otp: $contact_otp, login_otp: $login_otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.contact_otp, contact_otp) ||
                other.contact_otp == contact_otp) &&
            (identical(other.login_otp, login_otp) ||
                other.login_otp == login_otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contact_otp, login_otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusImplToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status({final String? contact_otp, final int? login_otp}) =
      _$StatusImpl;

  factory _Status.fromJson(Map<String, dynamic> json) = _$StatusImpl.fromJson;

  @override
  String? get contact_otp;
  @override
  int? get login_otp;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
