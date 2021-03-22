import '../models/tour_operator_model.dart';
import 'agency_api_provider.dart';

class AgencyRepository {
  final agencyApiProvider = AgencyApiProvider();

  Future<List<TourOperator>> fetchTourOperatorsByAgency({required int id}) =>
      agencyApiProvider.fetchTourOperatorsByAgency(id: id);
}
