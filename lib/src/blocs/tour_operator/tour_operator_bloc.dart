import 'dart:async';

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
  late final StreamSubscription<List<TourOperatorService>> _subscription;

  TourOperatorBloc(
      {required this.tourOperatorRepository,
      required this.authRepo,
      required this.authState})
      : super(TourOperatorState.loading()) {
    _subscription = tourOperatorRepository
        .watchAllServicesByOperator(
            tourOperatorId: (authState as Authenticated).user.id)
        .listen((event) {
      state = TourOperatorState.data(services: event);
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  void logoutButtonPressed() {
    authRepo.logout();
  }

  void addServiceButtonPressed(String? serviceName) async {
    if (serviceName != null) {
      final newService = TourOperatorService(
        name: serviceName,
      );
      await tourOperatorRepository.addServiceToOperator(
          newService, (authState as Authenticated).user.id);
    }
  }

  void removeServiceButtonPressed(TourOperatorService service) async {
    await tourOperatorRepository.removeServiceFromOperator(
        service, (authState as Authenticated).user.id);
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
