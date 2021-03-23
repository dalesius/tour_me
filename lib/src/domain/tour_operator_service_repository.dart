import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/service_service.dart';
import '../models/tour_operator_service_model.dart';

class ServiceRepository {
  final ServiceService serviceService;

  ServiceRepository({required this.serviceService});

  Future<List<TourOperatorService>> fetchServicesByTourOperator(
      {required int tourOperatorId}) async {
    final result = await serviceService.fetchServicesByTourOperator(
        tourOperatorId: tourOperatorId);
    return result
        .map((service) => TourOperatorService.fromJson(service))
        .toList();
  }
}

// Dependency injection & Singleton
final serviceRepository = Provider<ServiceRepository>((ref) {
  final tourServiceService = ref.watch(serviceService);
  return ServiceRepository(serviceService: tourServiceService);
});
