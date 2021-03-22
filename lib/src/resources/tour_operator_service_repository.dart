import '../models/tour_operator_service_model.dart';
import 'tour_operator_service_api_provider.dart';

class TourOperatorServiceRepository {
  final tourOperatorServiceApiProvider = TourOperatorServiceApiProvider();

  Future<List<TourOperatorService>> fetchTourOperatorServicesByTourOperator(
          {required int tourOperatorId}) =>
      tourOperatorServiceApiProvider.fetchTourOperatorServicesByTourOperator(
          tourOperatorId: tourOperatorId);
}
