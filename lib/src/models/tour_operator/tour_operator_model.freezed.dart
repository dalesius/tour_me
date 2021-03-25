// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tour_operator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TourOperator _$TourOperatorFromJson(Map<String, dynamic> json) {
  return _TourOperator.fromJson(json);
}

/// @nodoc
class _$TourOperatorTearOff {
  const _$TourOperatorTearOff();

  _TourOperator call({required int id, required String name}) {
    return _TourOperator(
      id: id,
      name: name,
    );
  }

  TourOperator fromJson(Map<String, Object> json) {
    return TourOperator.fromJson(json);
  }
}

/// @nodoc
const $TourOperator = _$TourOperatorTearOff();

/// @nodoc
mixin _$TourOperator {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourOperatorCopyWith<TourOperator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourOperatorCopyWith<$Res> {
  factory $TourOperatorCopyWith(
          TourOperator value, $Res Function(TourOperator) then) =
      _$TourOperatorCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$TourOperatorCopyWithImpl<$Res> implements $TourOperatorCopyWith<$Res> {
  _$TourOperatorCopyWithImpl(this._value, this._then);

  final TourOperator _value;
  // ignore: unused_field
  final $Res Function(TourOperator) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TourOperatorCopyWith<$Res>
    implements $TourOperatorCopyWith<$Res> {
  factory _$TourOperatorCopyWith(
          _TourOperator value, $Res Function(_TourOperator) then) =
      __$TourOperatorCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$TourOperatorCopyWithImpl<$Res> extends _$TourOperatorCopyWithImpl<$Res>
    implements _$TourOperatorCopyWith<$Res> {
  __$TourOperatorCopyWithImpl(
      _TourOperator _value, $Res Function(_TourOperator) _then)
      : super(_value, (v) => _then(v as _TourOperator));

  @override
  _TourOperator get _value => super._value as _TourOperator;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_TourOperator(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TourOperator implements _TourOperator {
  const _$_TourOperator({required this.id, required this.name});

  factory _$_TourOperator.fromJson(Map<String, dynamic> json) =>
      _$_$_TourOperatorFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'TourOperator(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TourOperator &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$TourOperatorCopyWith<_TourOperator> get copyWith =>
      __$TourOperatorCopyWithImpl<_TourOperator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TourOperatorToJson(this);
  }
}

abstract class _TourOperator implements TourOperator {
  const factory _TourOperator({required int id, required String name}) =
      _$_TourOperator;

  factory _TourOperator.fromJson(Map<String, dynamic> json) =
      _$_TourOperator.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourOperatorCopyWith<_TourOperator> get copyWith =>
      throw _privateConstructorUsedError;
}
