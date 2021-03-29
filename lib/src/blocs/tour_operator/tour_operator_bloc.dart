import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/blocs/tour_operator/tour_operator_state.dart';

import '../../domain/tour_operator_repository.dart';

class TourOperatorBloc extends StateNotifier<TourOperatorState> {
  final TourOperatorRepository tourOperatorRepository;
  TourOperatorBloc({required this.tourOperatorRepository})
      : super(TourOperatorState.loading());
}

// Dependency injection & Singleton
final tourOperatorBloc = StateNotifierProvider<TourOperatorBloc>((ref) {
  final tourOperatorRepo = ref.watch(tourOperatorRepository);
  return TourOperatorBloc(tourOperatorRepository: tourOperatorRepo);
});
