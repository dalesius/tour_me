import 'package:tour_me/src/models/tour_operator_model.dart';

import '../mocks/mock_data.dart';

class AgencyApiProvider {
  Future<List<TourOperator>> fetchTourOperators() async {
    print('Fetching tour operators...');
    await Future.delayed(Duration(seconds: 5));
    print('Tour operators fetched...');
    print({
      mockTourOperators
          .map((tourOperator) => TourOperator.fromJson(tourOperator))
          .toList()
    });
    return mockTourOperators
        .map((tourOperator) => TourOperator.fromJson(tourOperator))
        .toList();
  }
}
