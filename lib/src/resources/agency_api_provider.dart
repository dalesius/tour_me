import '../mocks/mock_data.dart' as MockData;
import '../models/tour_operator_model.dart';

class AgencyApiProvider {
  Future<List<TourOperator>> fetchTourOperatorsByAgency(
      {required int id}) async {
    print('Fetching tour operators...');
    await Future.delayed(Duration(seconds: 4));
    print('Tour operators fetched...');

    return MockData.mockTourOperatorsByAgency
        .map((tourOperator) => TourOperator.fromJson(tourOperator))
        .toList();
  }
}
