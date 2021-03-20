import 'package:rxdart/rxdart.dart';

import '../models/tour_operator_model.dart';
import '../resources/agency_repository.dart';

class AgencyViewBloc {
  final _agencyRepository = AgencyRepository();
  final _tourOperatorsFetcher =
      PublishSubject<List<TourOperator>>(); // Controller

  Stream<List<TourOperator>> get allTourOperators =>
      _tourOperatorsFetcher.stream; // Creates a suscriber?

  fetchTourOperators() async {
    List<TourOperator> tourOperators =
        await _agencyRepository.fetchTourOperators();
    _tourOperatorsFetcher.sink
        .add(tourOperators); // Adds an object to the stream
  }

  dispose() {
    _tourOperatorsFetcher.close(); // Close the stream
  }
}

final agencyViewBloc = AgencyViewBloc();
