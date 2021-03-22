import 'package:tour_me/src/models/tour_operator_model.dart';
import 'package:tour_me/src/resources/tour_operator_api_provider.dart';

class TourOperatorRepository {
  final tourOperatorApi = TourOperatorApiProvider();

  Future<TourOperator> fetchTourOperator({required int id}) =>
      tourOperatorApi.fetchTourOperator(id: id);
}
