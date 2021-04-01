import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class TourOperatorApi {
//   Future<List<Map<String, dynamic>>> fetchAllTourOperators() async {
//     print('Fetching all tour operators...');
//     await Future.delayed(Duration(seconds: 3));
//     print('All tour operators fetched...');
//     return MockData.mockTourOperators;
//   }

//   Future<Map<String, dynamic>> fetchTourOperator({required int id}) async {
//     print('Fetching tour operator with id: $id...');
//     await Future.delayed(Duration(seconds: 3));
//     print('Tour operator fetched...');
//     return MockData.mockTourOperators.firstWhere(
//       (tourOperator) => tourOperator['id'] == id,
//     );
//   }

//   Future<void> addServiceToOperator(Map<String, dynamic> service) async {
//     print('Adding tour operator service to operator...');
//     await Future.delayed(Duration(seconds: 3));

//     print('Tour operator service added...');
//     MockData.mockTourOperatorServices.add(service);
//   }

//   Future<List<Map<String, dynamic>>> getAllServicesByOperator(
//       {required String email}) async {
//     print('Fetching tour operator services with id: $email...');
//     // await Future.delayed(Duration(seconds: 3));
//     print('Tour operator services fetched...');
//     return MockData.mockTourOperatorServices
//         .where((service) => service['tour_operator_id'] == email)
//         .toList();
//   }
// }

final tourOperatorApi = Provider((_) => FirebaseFirestore.instance);
