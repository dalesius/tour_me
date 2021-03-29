import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../mocks/mock_data.dart' as MockData;

class TourOperatorApi {
  Future<List<Map<String, dynamic>>> fetchAllTourOperators() async {
    print('Fetching all tour operators...');
    await Future.delayed(Duration(seconds: 3));
    print('All tour operators fetched...');
    return MockData.mockTourOperators;
  }

  Future<Map<String, dynamic>> fetchTourOperator({required int id}) async {
    print('Fetching tour operator with id: $id...');
    await Future.delayed(Duration(seconds: 3));
    print('Tour operator fetched...');
    return MockData.mockTourOperators.firstWhere(
      (tourOperator) => tourOperator['id'] == id,
    );
  }

  Future<List<Map<String, dynamic>>> getAllServicesByOperator(
      {required String email}) async {
    print('Fetching tour operator services with id: $email...');
    await Future.delayed(Duration(seconds: 3));
    print('Tour operator services fetched...');
    return MockData.mockTourOperatorServices
        .where((service) => service['tour_operator_id'] == email)
        .toList();
  }
}

final tourOperatorApi = Provider((_) => TourOperatorApi());
