import 'package:rxdart/subjects.dart';

import '../models/tour_operator_service_model.dart';
import '../resources/tour_operator_service_repository.dart';

class TourOperatorServiceBloc {
  final TourOperatorServiceRepository tourOperatorServiceRepository;
  TourOperatorServiceBloc({required this.tourOperatorServiceRepository});

  final tourOperatorServicesFetcher =
      PublishSubject<List<TourOperatorService>>();

  Stream<List<TourOperatorService>> get tourOperatorServicesByTourOperator =>
      tourOperatorServicesFetcher.stream;

  fetchTourOperatorServicesByTourOperator({required int tourOperatorId}) async {
    final result = await tourOperatorServiceRepository
        .fetchTourOperatorServicesByTourOperator(
            tourOperatorId: tourOperatorId);
    return tourOperatorServicesFetcher.sink.add(result);
  }

  dispose() => tourOperatorServicesFetcher.close();
}

final tourOperatorServiceBloc = TourOperatorServiceBloc(
    tourOperatorServiceRepository: TourOperatorServiceRepository());

class TourOperatorServiceBlocState {
  final int id;
  final int tourOperatorId;
  final String name;

  TourOperatorServiceBlocState(this.id, this.tourOperatorId, this.name);
}
