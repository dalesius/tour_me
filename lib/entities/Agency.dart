import 'Operator.dart';

class Agency {
  final int id;
  final String name;
  List<Operator> operators = [];

  Agency({required this.id, required this.name});
}
