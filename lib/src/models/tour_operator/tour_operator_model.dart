import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_operator_model.freezed.dart';
part 'tour_operator_model.g.dart';

@freezed
abstract class TourOperator with _$TourOperator {
  const factory TourOperator({required int id, required String name}) =
      _TourOperator;

  factory TourOperator.fromJson(Map<String, dynamic> json) =>
      _$TourOperatorFromJson(json);
}
