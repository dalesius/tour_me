import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/service/tour_operator_service_model.dart';

part 'tour_operator_state.freezed.dart';

@freezed
class TourOperatorState with _$TourOperatorState {
  const factory TourOperatorState.loading() = _Loading;
  const factory TourOperatorState.data({
    required List<TourOperatorService> services,
  }) = Data;
}
