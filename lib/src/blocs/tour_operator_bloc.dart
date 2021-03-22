import 'package:rxdart/subjects.dart';
import 'package:tour_me/src/models/tour_operator_model.dart';
import 'package:tour_me/src/resources/tour_operator_repository.dart';

class TourOperatorBloc {
  final TourOperatorRepository tourOperatorRepository;
  final tourOperatorFetcher = PublishSubject<TourOperator>();

  TourOperatorBloc({
    required this.tourOperatorRepository,
  });

  Stream<TourOperator> get tourOperator => tourOperatorFetcher.stream;

  fetchTourOperator({required int id}) async {
    final response = await tourOperatorRepository.fetchTourOperator(id: id);
    tourOperatorFetcher.sink.add(response);
  }

  dispose() => tourOperatorFetcher.close();
}

final tourOperatorBloc =
    TourOperatorBloc(tourOperatorRepository: TourOperatorRepository());

class TourOperatorBlocState {
  final int id;
  final int name;

  TourOperatorBlocState(this.id, this.name);
}
