import '../mocks/mock_data.dart';
import '../models/tour_operator_service_model.dart';

class TourOperatorServiceApiProvider {
  Future<List<TourOperatorService>> fetchAllTourOperatorServices() async {
    print('Fetching tour operator services...');
    await Future.delayed(Duration(seconds: 2));
    print('tour operator services fetched...');
    return mockTourOperatorServices
        .map((tourOperatorService) =>
            TourOperatorService.fromJson(tourOperatorService))
        .toList();
  }

  Future<TourOperatorService> fetchTourOperatorService(
      {required int id}) async {
    print('Fetching tour operator service with id: $id...');
    await Future.delayed(Duration(seconds: 2));
    print('Tour operator service fetched...');
    return TourOperatorService.fromJson(mockTourOperatorServices
        .firstWhere((tourOperatorService) => tourOperatorService['id'] == id));
  }
}
