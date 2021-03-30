import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_operator_service_model.freezed.dart';
part 'tour_operator_service_model.g.dart';

@freezed
class TourOperatorService with _$TourOperatorService {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TourOperatorService({
    required int id,
    required String tourOperatorId,
    required String name,
  }) = _TourOperatorService;

  factory TourOperatorService.fromJson(Map<String, dynamic> json) =>
      _$TourOperatorServiceFromJson(json);
}
