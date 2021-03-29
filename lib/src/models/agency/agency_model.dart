import 'package:freezed_annotation/freezed_annotation.dart';

part 'agency_model.freezed.dart';
part 'agency_model.g.dart';

@freezed
abstract class Agency with _$Agency {
  const factory Agency({required int id, required String name}) = _Agency;

  factory Agency.fromJson(json) => _$AgencyFromJson(json);
}
