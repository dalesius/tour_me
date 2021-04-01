// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tour_operator_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TourOperatorServiceTearOff {
  const _$TourOperatorServiceTearOff();

  _TourOperatorService call({String? id, required String name}) {
    return _TourOperatorService(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $TourOperatorService = _$TourOperatorServiceTearOff();

/// @nodoc
mixin _$TourOperatorService {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TourOperatorServiceCopyWith<TourOperatorService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourOperatorServiceCopyWith<$Res> {
  factory $TourOperatorServiceCopyWith(
          TourOperatorService value, $Res Function(TourOperatorService) then) =
      _$TourOperatorServiceCopyWithImpl<$Res>;
  $Res call({String? id, String name});
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
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? id, String name});
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
    Object? name = freezed,
  }) {
    return _then(_TourOperatorService(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)

/// @nodoc
class _$_TourOperatorService implements _TourOperatorService {
  const _$_TourOperatorService({this.id, required this.name});

  @override
  final String? id;
  @override
  final String name;

  @override
  String toString() {
    return 'TourOperatorService(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TourOperatorService &&
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
  _$TourOperatorServiceCopyWith<_TourOperatorService> get copyWith =>
      __$TourOperatorServiceCopyWithImpl<_TourOperatorService>(
          this, _$identity);
}

abstract class _TourOperatorService implements TourOperatorService {
  const factory _TourOperatorService({String? id, required String name}) =
      _$_TourOperatorService;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourOperatorServiceCopyWith<_TourOperatorService> get copyWith =>
      throw _privateConstructorUsedError;
}
