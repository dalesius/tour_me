import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tour_me/src/models/service/tour_operator_service_model.dart';

part 'tour_operator_state.freezed.dart';

@freezed
abstract class TourOperatorState with _$TourOperatorState {
  const factory TourOperatorState.loading() = _Loading;
  const factory TourOperatorState(
      {required List<TourOperatorService> services}) = _TourOperatorState;
}
