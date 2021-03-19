class Operator {
  final int id;
  final String name;
  List<OperatorService> services = [];

  Operator({required this.id, required this.name});
}

class OperatorService {
  final int id;
  final String name;

  OperatorService(this.id, this.name);
}
