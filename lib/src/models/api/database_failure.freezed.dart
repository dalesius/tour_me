// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'database_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DBFailureTearOff {
  const _$DBFailureTearOff();

  GeneralDBFailure generalDBFailure(String? errorMessage) {
    return GeneralDBFailure(
      errorMessage,
    );
  }
}

/// @nodoc
const $DBFailure = _$DBFailureTearOff();

/// @nodoc
mixin _$DBFailure {
  String? get errorMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) generalDBFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? generalDBFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralDBFailure value) generalDBFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralDBFailure value)? generalDBFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DBFailureCopyWith<DBFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DBFailureCopyWith<$Res> {
  factory $DBFailureCopyWith(DBFailure value, $Res Function(DBFailure) then) =
      _$DBFailureCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class _$DBFailureCopyWithImpl<$Res> implements $DBFailureCopyWith<$Res> {
  _$DBFailureCopyWithImpl(this._value, this._then);

  final DBFailure _value;
  // ignore: unused_field
  final $Res Function(DBFailure) _then;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $GeneralDBFailureCopyWith<$Res>
    implements $DBFailureCopyWith<$Res> {
  factory $GeneralDBFailureCopyWith(
          GeneralDBFailure value, $Res Function(GeneralDBFailure) then) =
      _$GeneralDBFailureCopyWithImpl<$Res>;
  @override
  $Res call({String? errorMessage});
}

/// @nodoc
class _$GeneralDBFailureCopyWithImpl<$Res> extends _$DBFailureCopyWithImpl<$Res>
    implements $GeneralDBFailureCopyWith<$Res> {
  _$GeneralDBFailureCopyWithImpl(
      GeneralDBFailure _value, $Res Function(GeneralDBFailure) _then)
      : super(_value, (v) => _then(v as GeneralDBFailure));

  @override
  GeneralDBFailure get _value => super._value as GeneralDBFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(GeneralDBFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$GeneralDBFailure implements GeneralDBFailure {
  const _$GeneralDBFailure(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DBFailure.generalDBFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeneralDBFailure &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $GeneralDBFailureCopyWith<GeneralDBFailure> get copyWith =>
      _$GeneralDBFailureCopyWithImpl<GeneralDBFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) generalDBFailure,
  }) {
    return generalDBFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? generalDBFailure,
    required TResult orElse(),
  }) {
    if (generalDBFailure != null) {
      return generalDBFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralDBFailure value) generalDBFailure,
  }) {
    return generalDBFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralDBFailure value)? generalDBFailure,
    required TResult orElse(),
  }) {
    if (generalDBFailure != null) {
      return generalDBFailure(this);
    }
    return orElse();
  }
}

abstract class GeneralDBFailure implements DBFailure {
  const factory GeneralDBFailure(String? errorMessage) = _$GeneralDBFailure;

  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GeneralDBFailureCopyWith<GeneralDBFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
