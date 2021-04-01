import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/blocs/auth/auth_bloc.dart';
import 'package:tour_me/src/blocs/auth/auth_state.dart';
import 'package:tour_me/src/models/service/tour_operator_service_model.dart';

import '../../domain/auth/auth_repository.dart';
import '../../domain/tour_operator_repository.dart';
import 'tour_operator_state.dart';

class TourOperatorBloc extends StateNotifier<TourOperatorState> {
  final TourOperatorRepository tourOperatorRepository;
  final AuthRepository authRepo;
  final AuthState authState;

  TourOperatorBloc(
      {required this.tourOperatorRepository,
      required this.authRepo,
      required this.authState})
      : super(TourOperatorState.loading());

  void logoutButtonPressed() {
    authRepo.logout();
  }

  void addServiceButtonPressed(String? serviceName) async {
    if (serviceName != null) {
      final newService = TourOperatorService(
          id: 9,
          tourOperatorId: (authState as Authenticated).user.userId,
          name: serviceName);
      await tourOperatorRepository.addServiceToOperator(newService);
    }
  }

  void getAllServicesByOperator({required String email}) async {
    final operatorServices =
        await tourOperatorRepository.getAllServicesByOperator(email: email);
    state = TourOperatorState.data(services: operatorServices);
  }
}

// Dependency injection & Singleton
final tourOperatorBlocProvider = StateNotifierProvider<TourOperatorBloc>((ref) {
  final tourOperatorRepo = ref.watch(tourOperatorRepository);
  final authRepo = ref.watch(authRepository);
  final authState = ref.watch(authBlocProvider.state);
  return TourOperatorBloc(
      tourOperatorRepository: tourOperatorRepo,
      authRepo: authRepo,
      authState: authState);
});
