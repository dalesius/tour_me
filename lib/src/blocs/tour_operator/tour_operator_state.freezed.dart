// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tour_operator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TourOperatorStateTearOff {
  const _$TourOperatorStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _TourOperatorState call({required List<TourOperatorService> services}) {
    return _TourOperatorState(
      services: services,
    );
  }
}

/// @nodoc
const $TourOperatorState = _$TourOperatorStateTearOff();

/// @nodoc
mixin _$TourOperatorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<TourOperatorService> services) $default, {
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<TourOperatorService> services)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TourOperatorState value) $default, {
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TourOperatorState value)? $default, {
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourOperatorStateCopyWith<$Res> {
  factory $TourOperatorStateCopyWith(
          TourOperatorState value, $Res Function(TourOperatorState) then) =
      _$TourOperatorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TourOperatorStateCopyWithImpl<$Res>
    implements $TourOperatorStateCopyWith<$Res> {
  _$TourOperatorStateCopyWithImpl(this._value, this._then);

  final TourOperatorState _value;
  // ignore: unused_field
  final $Res Function(TourOperatorState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TourOperatorStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TourOperatorState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<TourOperatorService> services) $default, {
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<TourOperatorService> services)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TourOperatorState value) $default, {
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TourOperatorState value)? $default, {
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TourOperatorState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$TourOperatorStateCopyWith<$Res> {
  factory _$TourOperatorStateCopyWith(
          _TourOperatorState value, $Res Function(_TourOperatorState) then) =
      __$TourOperatorStateCopyWithImpl<$Res>;
  $Res call({List<TourOperatorService> services});
}

/// @nodoc
class __$TourOperatorStateCopyWithImpl<$Res>
    extends _$TourOperatorStateCopyWithImpl<$Res>
    implements _$TourOperatorStateCopyWith<$Res> {
  __$TourOperatorStateCopyWithImpl(
      _TourOperatorState _value, $Res Function(_TourOperatorState) _then)
      : super(_value, (v) => _then(v as _TourOperatorState));

  @override
  _TourOperatorState get _value => super._value as _TourOperatorState;

  @override
  $Res call({
    Object? services = freezed,
  }) {
    return _then(_TourOperatorState(
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<TourOperatorService>,
    ));
  }
}

/// @nodoc
class _$_TourOperatorState implements _TourOperatorState {
  const _$_TourOperatorState({required this.services});

  @override
  final List<TourOperatorService> services;

  @override
  String toString() {
    return 'TourOperatorState(services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TourOperatorState &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(services);

  @JsonKey(ignore: true)
  @override
  _$TourOperatorStateCopyWith<_TourOperatorState> get copyWith =>
      __$TourOperatorStateCopyWithImpl<_TourOperatorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<TourOperatorService> services) $default, {
    required TResult Function() loading,
  }) {
    return $default(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<TourOperatorService> services)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TourOperatorState value) $default, {
    required TResult Function(_Loading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TourOperatorState value)? $default, {
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TourOperatorState implements TourOperatorState {
  const factory _TourOperatorState(
      {required List<TourOperatorService> services}) = _$_TourOperatorState;

  List<TourOperatorService> get services => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TourOperatorStateCopyWith<_TourOperatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
