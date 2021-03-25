import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/models/tour_operator/tour_operator_model.dart';
import 'package:tour_me/src/services/api/tour_operator_api.dart';

class TourOperatorRepository {
  final TourOperatorApi tourOperatorApi;
  TourOperatorRepository({required this.tourOperatorApi});

  Future<TourOperator> fetchTourOperator({required int id}) async {
    final result = await tourOperatorApi.fetchTourOperator(id: id);
    return TourOperator.fromJson(result);
  }
}

// Dependency injection & Singleton
final tourOperatorRepository = Provider<TourOperatorRepository>((ref) {
  final service = ref.watch(tourOperatorApi);
  return TourOperatorRepository(tourOperatorApi: service);
});
