import '../mocks/mock_data.dart' as MockData;
import '../models/tour_operator_model.dart';

class TourOperatorApiProvider {
  Future<List<TourOperator>> fetchAllTourOperators() async {
    print('Fetching tour operators...');
    await Future.delayed(Duration(seconds: 2));
    print('Tour operators fetched...');
    return MockData.mockTourOperators
        .map((tourOperator) => TourOperator.fromJson(tourOperator))
        .toList();
  }

  Future<TourOperator> fetchTourOperator({required int id}) async {
    print('Fetching tour operator with id: $id...');
    await Future.delayed(Duration(seconds: 2));
    print('Tour operator fetched...');
    return TourOperator.fromJson(MockData.mockTourOperators
        .firstWhere((tourOperator) => tourOperator['id'] == id));
  }
}
