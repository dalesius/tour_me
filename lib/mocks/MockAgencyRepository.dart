import 'package:tour_me/entities/Agency.dart';
import 'package:tour_me/entities/Operator.dart';

abstract class AgencyRepository {
  Future<List<Operator>> getAgencyOperators();
  Future<Operator> getOperator({required int id});
  Future<Agency> getAgency({required int id});
}

class MockAgencyRepository implements AgencyRepository {
  @override
  Future<Agency> getAgency({required int id}) async {
    await Future.delayed(Duration(seconds: 3));
    return Agency(id: id, name: 'Costa Rica Travel');
  }

  @override
  Future<List<Operator>> getAgencyOperators() async {
    await Future.delayed(Duration(seconds: 3));
    return operators;
  }

  @override
  Future<Operator> getOperator({required int id}) async {
    await Future.delayed(Duration(seconds: 3));
    return operators.firstWhere((operator) => operator.id == id);
  }
}

final operators = [
  Operator(id: 1, name: 'Pacific Coast Dive Center'),
  Operator(id: 2, name: 'Crazy Monkey Tours'),
  Operator(id: 3, name: 'Panache Trips'),
  Operator(id: 4, name: 'Luquitas Surfing'),
];
