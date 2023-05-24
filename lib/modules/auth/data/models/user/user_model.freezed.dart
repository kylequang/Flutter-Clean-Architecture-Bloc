// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentUserResult _$CurrentUserResultFromJson(Map<String, dynamic> json) {
  return _CurrentUserResult.fromJson(json);
}

/// @nodoc
mixin _$CurrentUserResult {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName_lastName')
  String get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUserResultCopyWith<CurrentUserResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserResultCopyWith<$Res> {
  factory $CurrentUserResultCopyWith(
          CurrentUserResult value, $Res Function(CurrentUserResult) then) =
      _$CurrentUserResultCopyWithImpl<$Res, CurrentUserResult>;
  @useResult
  $Res call({int id, @JsonKey(name: 'firstName_lastName') String fullName});
}

/// @nodoc
class _$CurrentUserResultCopyWithImpl<$Res, $Val extends CurrentUserResult>
    implements $CurrentUserResultCopyWith<$Res> {
  _$CurrentUserResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentUserResultCopyWith<$Res>
    implements $CurrentUserResultCopyWith<$Res> {
  factory _$$_CurrentUserResultCopyWith(_$_CurrentUserResult value,
          $Res Function(_$_CurrentUserResult) then) =
      __$$_CurrentUserResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'firstName_lastName') String fullName});
}

/// @nodoc
class __$$_CurrentUserResultCopyWithImpl<$Res>
    extends _$CurrentUserResultCopyWithImpl<$Res, _$_CurrentUserResult>
    implements _$$_CurrentUserResultCopyWith<$Res> {
  __$$_CurrentUserResultCopyWithImpl(
      _$_CurrentUserResult _value, $Res Function(_$_CurrentUserResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
  }) {
    return _then(_$_CurrentUserResult(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentUserResult extends _CurrentUserResult {
  const _$_CurrentUserResult(
      {required this.id,
      @JsonKey(name: 'firstName_lastName') required this.fullName})
      : super._();

  factory _$_CurrentUserResult.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentUserResultFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'firstName_lastName')
  final String fullName;

  @override
  String toString() {
    return 'CurrentUserResult(id: $id, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentUserResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentUserResultCopyWith<_$_CurrentUserResult> get copyWith =>
      __$$_CurrentUserResultCopyWithImpl<_$_CurrentUserResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentUserResultToJson(
      this,
    );
  }
}

abstract class _CurrentUserResult extends CurrentUserResult {
  const factory _CurrentUserResult(
      {required final int id,
      @JsonKey(name: 'firstName_lastName')
          required final String fullName}) = _$_CurrentUserResult;
  const _CurrentUserResult._() : super._();

  factory _CurrentUserResult.fromJson(Map<String, dynamic> json) =
      _$_CurrentUserResult.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'firstName_lastName')
  String get fullName;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentUserResultCopyWith<_$_CurrentUserResult> get copyWith =>
      throw _privateConstructorUsedError;
}
