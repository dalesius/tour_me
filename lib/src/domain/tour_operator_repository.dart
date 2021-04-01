import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/models/api/database_failure.dart';
import 'package:tour_me/src/models/service/tour_operator_service_model.dart';
import 'package:tour_me/src/models/tour_operator/tour_operator_model.dart';
import 'package:tour_me/src/services/api/tour_operator_api.dart';

class TourOperatorRepository {
  final FirebaseFirestore tourOperatorApi;
  TourOperatorRepository({required this.tourOperatorApi});

  // Future<TourOperator> fetchTourOperator({required int id}) async {
  //   final result = await tourOperatorApi.fetchTourOperator(id: id);
  //   return TourOperator.fromJson(result);
  // }

  Future<Either<DBFailure, Unit>> addServiceToOperator(
      TourOperatorService newService) async {
    try {
      tourOperatorApi
          .collection('tour_operators')
          .doc()
          .collection('services')
          .add(newService.toJson());
      // await tourOperatorApi.addServiceToOperator(newService.toJson());
      return right(unit);
    } catch (_) {
      return left(
          DBFailure.generalDBFailure('Error while trying to add service.'));
    }
  }

  Future<List<TourOperatorService>> getAllServicesByOperator(
      {required String email}) async {
    final result = await tourOperatorApi.getAllServicesByOperator(email: email);
    return result
        .map((service) => TourOperatorService.fromJson(service))
        .toList();
  }
}

// Dependency injection & Singleton
final tourOperatorRepository = Provider<TourOperatorRepository>((ref) {
  final service = ref.watch(tourOperatorApi);
  return TourOperatorRepository(tourOperatorApi: service);
});
