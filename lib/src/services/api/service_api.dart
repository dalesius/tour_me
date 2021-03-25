import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../mocks/mock_data.dart';

class ServiceApi {
  Future<List<Map<String, dynamic>>> fetchServicesByTourOperator(
      {required int tourOperatorId}) async {
    print(
        'Fetching tour operator services with tour_operator_id: $tourOperatorId...');
    await Future.delayed(Duration(seconds: 3));
    print('Tour operator services fetched...');
    return mockTourOperatorServices
        .where((tourOperatorService) =>
            tourOperatorService['tour_operator_id'] == tourOperatorId)
        .toList();
  }
}

// Singleton
final serviceApi = Provider<ServiceApi>((_) => ServiceApi());
