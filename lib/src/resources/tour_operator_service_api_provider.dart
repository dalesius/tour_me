import '../mocks/mock_data.dart';
import '../models/tour_operator_service_model.dart';

class TourOperatorServiceApiProvider {
  Future<List<TourOperatorService>> fetchTourOperatorServicesByTourOperator(
      {required int tourOperatorId}) async {
    print(
        'Fetching tour operator services with tour_operator_id: $tourOperatorId...');
    await Future.delayed(Duration(seconds: 4));
    print('Tour operator services fetched...');
    return mockTourOperatorServices
        .where((tourOperatorService) =>
            tourOperatorService['tour_operator_id'] == tourOperatorId)
        .map((tourOperatorService) =>
            TourOperatorService.fromJson(tourOperatorService))
        .toList();
  }
}
