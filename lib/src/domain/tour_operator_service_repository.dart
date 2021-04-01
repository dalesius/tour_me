import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/service/tour_operator_service_model.dart';
import '../services/api/service_api.dart';

class ServiceRepository {
  final ServiceApi serviceApi;

  ServiceRepository({required this.serviceApi});

  Future<List<TourOperatorService>> fetchServicesByTourOperator(
      {required int tourOperatorId}) async {
    throw UnimplementedError();
    // final result = await serviceApi.fetchServicesByTourOperator(
    //     tourOperatorId: tourOperatorId);
    // return result
    //     .map((service) => )
    //     .toList();
  }
}

// Dependency injection & Singleton
final serviceRepository = Provider<ServiceRepository>((ref) {
  final service = ref.watch(serviceApi);
  return ServiceRepository(serviceApi: service);
});
