import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/tour_operator_repository.dart';

class TourOperatorBloc extends StateNotifier<TourOperatorState> {
  final TourOperatorRepository tourOperatorRepository;
  TourOperatorBloc({required this.tourOperatorRepository})
      : super(TourOperatorState(id: 3, name: ''));
}

// Dependency injection & Singleton
final tourOperatorBloc = StateNotifierProvider((ref) {
  final tourOperatorRepo = ref.watch(tourOperatorRepository);
  return TourOperatorBloc(tourOperatorRepository: tourOperatorRepo);
});

class TourOperatorState {
  final int id;
  final String name;

  TourOperatorState({required this.id, required this.name});
}
