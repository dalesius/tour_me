import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_operator_service_model.freezed.dart';
part 'tour_operator_service_model.g.dart';

@freezed
class TourOperatorService with _$TourOperatorService {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TourOperatorService({
    String? id,
    required String name,
  }) = _TourOperatorService;
}
