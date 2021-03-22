import 'package:rxdart/rxdart.dart';

import '../models/tour_operator_model.dart';
import '../resources/agency_repository.dart';

class AgencyViewBloc {
  final AgencyRepository agencyRepository;

  final _tourOperatorsFetcher = PublishSubject<List<TourOperator>>();

  AgencyViewBloc({required this.agencyRepository}); // Controller

  Stream<List<TourOperator>> get allTourOperators =>
      _tourOperatorsFetcher.stream; // Creates a suscriber?

  fetchTourOperatorsByAgency({required int id}) async {
    List<TourOperator> tourOperators =
        await agencyRepository.fetchTourOperatorsByAgency(id: id);
    _tourOperatorsFetcher.sink
        .add(tourOperators); // Adds an object to the stream
  }

  dispose() {
    _tourOperatorsFetcher.close(); // Close the stream
  }
}

final agencyViewBloc = AgencyViewBloc(agencyRepository: AgencyRepository());
