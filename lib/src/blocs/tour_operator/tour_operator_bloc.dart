import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/auth/auth_repository.dart';
import '../../domain/tour_operator_repository.dart';
import 'tour_operator_state.dart';

class TourOperatorBloc extends StateNotifier<TourOperatorState> {
  final TourOperatorRepository tourOperatorRepository;
  final AuthRepository authRepo;
  TourOperatorBloc(
      {required this.tourOperatorRepository, required this.authRepo})
      : super(TourOperatorState.loading());

  void logoutButtonPressed() {
    authRepo.logout();
  }

  void addServiceButtonPressed(String? serviceName) {
    if (serviceName != null) {
      tourOperatorRepository.addServiceToOperator(serviceName);
    }
  }

  void getAllServicesByOperator({required String email}) async {
    final services =
        await tourOperatorRepository.getAllServicesByOperator(email: email);
    state = (state as Data).copyWith(services: services);
  }
}

// Dependency injection & Singleton
final tourOperatorBlocProvider = StateNotifierProvider<TourOperatorBloc>((ref) {
  final tourOperatorRepo = ref.watch(tourOperatorRepository);
  final authRepo = ref.watch(authRepository);
  return TourOperatorBloc(
      tourOperatorRepository: tourOperatorRepo, authRepo: authRepo);
});
