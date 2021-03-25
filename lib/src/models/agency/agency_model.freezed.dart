// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'agency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Agency _$AgencyFromJson(Map<String, dynamic> json) {
  return _Agency.fromJson(json);
}

/// @nodoc
class _$AgencyTearOff {
  const _$AgencyTearOff();

  _Agency call({required int id, required String name}) {
    return _Agency(
      id: id,
      name: name,
    );
  }

  Agency fromJson(Map<String, Object> json) {
    return Agency.fromJson(json: json);
  }
}

/// @nodoc
const $Agency = _$AgencyTearOff();

/// @nodoc
mixin _$Agency {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgencyCopyWith<Agency> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgencyCopyWith<$Res> {
  factory $AgencyCopyWith(Agency value, $Res Function(Agency) then) =
      _$AgencyCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$AgencyCopyWithImpl<$Res> implements $AgencyCopyWith<$Res> {
  _$AgencyCopyWithImpl(this._value, this._then);

  final Agency _value;
  // ignore: unused_field
  final $Res Function(Agency) _then;

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
abstract class _$AgencyCopyWith<$Res> implements $AgencyCopyWith<$Res> {
  factory _$AgencyCopyWith(_Agency value, $Res Function(_Agency) then) =
      __$AgencyCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$AgencyCopyWithImpl<$Res> extends _$AgencyCopyWithImpl<$Res>
    implements _$AgencyCopyWith<$Res> {
  __$AgencyCopyWithImpl(_Agency _value, $Res Function(_Agency) _then)
      : super(_value, (v) => _then(v as _Agency));

  @override
  _Agency get _value => super._value as _Agency;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Agency(
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
class _$_Agency implements _Agency {
  const _$_Agency({required this.id, required this.name});

  factory _$_Agency.fromJson(Map<String, dynamic> json) =>
      _$_$_AgencyFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Agency(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Agency &&
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
  _$AgencyCopyWith<_Agency> get copyWith =>
      __$AgencyCopyWithImpl<_Agency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AgencyToJson(this);
  }
}

abstract class _Agency implements Agency {
  const factory _Agency({required int id, required String name}) = _$_Agency;

  factory _Agency.fromJson(Map<String, dynamic> json) = _$_Agency.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AgencyCopyWith<_Agency> get copyWith => throw _privateConstructorUsedError;
}
