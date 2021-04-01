import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_operator_service_model.freezed.dart';
part 'tour_operator_service_model.g.dart';

@freezed
class TourOperatorService with _$TourOperatorService {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TourOperatorService({
    required String name,
    required int freeSpots,
  }) = _TourOperatorService;

  factory TourOperatorService.fromJson(Map<String, dynamic> json) =>
      _$TourOperatorServiceFromJson(json);
}
