import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/blocs/tour_operator/tour_operator_state.dart';
import 'package:tour_me/src/domain/auth/auth_repository.dart';

import '../../domain/tour_operator_repository.dart';

class TourOperatorBloc extends StateNotifier<TourOperatorState> {
  final TourOperatorRepository tourOperatorRepository;
  final AuthRepository authRepo;
  TourOperatorBloc(
      {required this.tourOperatorRepository, required this.authRepo})
      : super(TourOperatorState.loading());

  void logoutButtonPressed() {
    authRepo.logout();
  }

  void getAllServicesByOperator({required String email}) async {
    final services =
        await tourOperatorRepository.getAllServicesByOperator(email: email);
    state = TourOperatorState(services: services);
  }
}

// Dependency injection & Singleton
final tourOperatorBlocProvider = StateNotifierProvider<TourOperatorBloc>((ref) {
  final tourOperatorRepo = ref.watch(tourOperatorRepository);
  final authRepo = ref.watch(authRepository);
  return TourOperatorBloc(
      tourOperatorRepository: tourOperatorRepo, authRepo: authRepo);
});
