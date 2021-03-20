import '../models/tour_operator_model.dart';
import 'agency_api_provider.dart';

class AgencyRepository {
  final agencyApiProvider = AgencyApiProvider();

  Future<List<TourOperator>> fetchTourOperators() =>
      agencyApiProvider.fetchTourOperators();
}
