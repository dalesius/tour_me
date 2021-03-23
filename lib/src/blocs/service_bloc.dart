import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/domain/tour_operator_service_repository.dart';

class ServiceBloc extends StateNotifier<ServiceState> {
  final ServiceRepository serviceRepository;
  ServiceBloc({required this.serviceRepository}) : super(ServiceState());
}

// Dependency injection & Singleton
final serviceBloc = StateNotifierProvider<ServiceBloc>((ref) {
  final serviceRepo = ref.watch(serviceRepository);
  return ServiceBloc(serviceRepository: serviceRepo);
});

class ServiceState {}
