import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/api/database_failure.dart';
import '../models/service/tour_operator_service_model.dart';
import '../services/api/tour_operator_api.dart';

class TourOperatorRepository {
  final FirebaseFirestore tourOperatorApi;
  TourOperatorRepository({required this.tourOperatorApi});

  // Future<TourOperator> fetchTourOperator({required int id}) async {
  //   final result = await tourOperatorApi.fetchTourOperator(id: id);
  //   return TourOperator.fromJson(result);
  // }

  Future<Either<DBFailure, Unit>> addServiceToOperator(
      TourOperatorService newService, String tourOperatorId) async {
    try {
      await tourOperatorApi
          .collection('tour_operators')
          .doc(tourOperatorId)
          .collection('services')
          .add({"name": newService.name});
      return right(unit);
    } catch (_) {
      return left(
          DBFailure.generalDBFailure('Error while trying to add service.'));
    }
  }

  Future<Either<DBFailure, Unit>> removeServiceFromOperator(
      TourOperatorService service, String tourOperatorId) async {
    try {
      await tourOperatorApi
          .collection('tour_operators')
          .doc(tourOperatorId)
          .collection('services')
          .doc(service.id)
          .delete();

      return right(unit);
    } catch (_) {
      return left(
          DBFailure.generalDBFailure('Error while trying to remove service.'));
    }
  }

  Future<List<TourOperatorService>> getAllServicesByOperator(
      {required String tourOperatorId}) async {
    final result = await tourOperatorApi
        .collection('tour_operators')
        .doc(tourOperatorId)
        .collection('services')
        .get();

    return result.docs.map((firestoreService) {
      final jsonService = firestoreService.data()!;
      return TourOperatorService(
        id: firestoreService.id,
        name: jsonService['name'],
      );
    }).toList();
  }

  Stream<List<TourOperatorService>> watchAllServicesByOperator(
      {required String tourOperatorId}) {
    final result = tourOperatorApi
        .collection('tour_operators')
        .doc(tourOperatorId)
        .collection('services')
        .snapshots();

    return result.map((event) => event.docs.map((firestoreService) {
          final jsonService = firestoreService.data()!;
          print(jsonService);
          return TourOperatorService(
            id: firestoreService.id,
            name: jsonService['name'],
          );
        }).toList());
  }
}

// Dependency injection & Singleton
final tourOperatorRepository = Provider<TourOperatorRepository>((ref) {
  final service = ref.watch(tourOperatorApi);
  return TourOperatorRepository(tourOperatorApi: service);
});
