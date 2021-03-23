import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../mocks/mock_data.dart' as MockData;

class AgencyService {
  Future<List<Map<String, dynamic>>> fetchTourOperatorsByAgency(
      {required int id}) async {
    print('Fetching tour operators by agency...');
    await Future.delayed(Duration(seconds: 3));
    print('Tour operators by agency fetched...');

    return MockData.mockTourOperatorsByAgency
        .where((tourOperator) => tourOperator['id'] == id)
        .toList();
  }

  Future<List<Map<String, dynamic>>> fetchAllAgencies() async {
    print('Fetching all agencies...');
    await Future.delayed(Duration(seconds: 3));
    print('All agencies fetched...');

    return MockData.mockAgencies.toList();
  }
}

// Singleton Instance
final agencyService = Provider((_) => AgencyService());
