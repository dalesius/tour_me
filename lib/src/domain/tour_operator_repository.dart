import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/models/tour_operator_model.dart';
import 'package:tour_me/src/infrastructure/tour_operator_service.dart';

class TourOperatorRepository {
  final TourOperatorService tourOperatorService;
  TourOperatorRepository({required this.tourOperatorService});

  Future<TourOperator> fetchTourOperator({required int id}) async {
    final result = await tourOperatorService.fetchTourOperator(id: id);
    return TourOperator.fromJson(result);
  }
}

// Dependency injection & Singleton
final tourOperatorRepository = Provider<TourOperatorRepository>((ref) {
  final tourOperatorApi = ref.watch(tourOperatorService);
  return TourOperatorRepository(tourOperatorService: tourOperatorApi);
});
