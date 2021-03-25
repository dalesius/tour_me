// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tour_operator_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TourOperatorService _$TourOperatorServiceFromJson(Map<String, dynamic> json) {
  return _TourOperatorService.fromJson(json);
}

/// @nodoc
class _$TourOperatorServiceTearOff {
  const _$TourOperatorServiceTearOff();

  _TourOperatorService call(
      {required int id, required int tourOperatorId, required String name}) {
    return _TourOperatorService(
      id: id,
      tourOperatorId: tourOperatorId,
      name: name,
    );
  }

  TourOperatorService fromJson(Map<String, Object> json) {
    return TourOperatorService.fromJson(json);
  }
}

/// @nodoc
const $TourOperatorService = _$TourOperatorServiceTearOff();

/// @nodoc
mixin _$TourOperatorService {
  int get id => throw _privateConstructorUsedError;
  int get tourOperatorId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourOperatorServiceCopyWith<TourOperatorService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourOperatorServiceCopyWith<$Res> {
  factory $TourOperatorServiceCopyWith(
          TourOperatorService value, $Res Function(TourOperatorService) then) =
      _$TourOperatorServiceCopyWithImpl<$Res>;
  $Res call({int id, int tourOperatorId, String name});
}

/// @nodoc
class _$TourOperatorServiceCopyWithImpl<$Res>
    implements $TourOperatorServiceCopyWith<$Res> {
  _$TourOperatorServiceCopyWithImpl(this._value, this._then);

  final TourOperatorService _value;
  // ignore: unused_field
  final $Res Function(TourOperatorService) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? tourOperatorId = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tourOperatorId: tourOperatorId == freezed
          ? _value.tourOperatorId
          : tourOperatorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TourOperatorServiceCopyWith<$Res>
    implements $TourOperatorServiceCopyWith<$Res> {
  factory _$TourOperatorServiceCopyWith(_TourOperatorService value,
          $Res Function(_TourOperatorService) then) =
      __$TourOperatorServiceCopyWithImpl<$Res>;
  @override
  $Res call({int id, int tourOperatorId, String name});
}

/// @nodoc
class __$TourOperatorServiceCopyWithImpl<$Res>
    extends _$TourOperatorServiceCopyWithImpl<$Res>
    implements _$TourOperatorServiceCopyWith<$Res> {
  __$TourOperatorServiceCopyWithImpl(
      _TourOperatorService _value, $Res Function(_TourOperatorService) _then)
      : super(_value, (v) => _then(v as _TourOperatorService));

  @override
  _TourOperatorService get _value => super._value as _TourOperatorService;

  @override
  $Res call({
    Object? id = freezed,
    Object? tourOperatorId = freezed,
    Object? name = freezed,
  }) {
    return _then(_TourOperatorService(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tourOperatorId: tourOperatorId == freezed
          ? _value.tourOperatorId
          : tourOperatorId // ignore: cast_nullable_to_non_nullable
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
class _$_TourOperatorService implements _TourOperatorService {
  const _$_TourOperatorService(
      {required this.id, required this.tourOperatorId, required this.name});

  factory _$_TourOperatorService.fromJson(Map<String, dynamic> json) =>
      _$_$_TourOperatorServiceFromJson(json);

  @override
  final int id;
  @override
  final int tourOperatorId;
  @override
  final String name;

  @override
  String toString() {
    return 'TourOperatorService(id: $id, tourOperatorId: $tourOperatorId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TourOperatorService &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.tourOperatorId, tourOperatorId) ||
                const DeepCollectionEquality()
                    .equals(other.tourOperatorId, tourOperatorId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(tourOperatorId) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$TourOperatorServiceCopyWith<_TourOperatorService> get copyWith =>
      __$TourOperatorServiceCopyWithImpl<_TourOperatorService>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TourOperatorServiceToJson(this);
  }
}

abstract class _TourOperatorService implements TourOperatorService {
  const factory _TourOperatorService(
      {required int id,
      required int tourOperatorId,
      required String name}) = _$_TourOperatorService;

  factory _TourOperatorService.fromJson(Map<String, dynamic> json) =
      _$_TourOperatorService.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get tourOperatorId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourOperatorServiceCopyWith<_TourOperatorService> get copyWith =>
      throw _privateConstructorUsedError;
}
