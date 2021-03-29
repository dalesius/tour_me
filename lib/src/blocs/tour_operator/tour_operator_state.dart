import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_operator_state.freezed.dart';

@freezed
abstract class TourOperatorState with _$TourOperatorState {
  const factory TourOperatorState.loading() = _Loading;
}
