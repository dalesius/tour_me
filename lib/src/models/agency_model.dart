import 'tour_operator_model.dart';

class Agency {
  late int _id;
  late String _name;
  late List<TourOperator> _tourOperators;

  Agency.fromJson(Map<String, dynamic> parsedJson) {
    print("Operators: ${parsedJson['tour_operators'].length}");
    _id = parsedJson['id'];
    _name = parsedJson['name'];
    List<TourOperator> temp = [];
    for (var i = 0; i < parsedJson['tour_operators'].length; i++) {
      TourOperator tourOperator =
          TourOperator.fromJson(parsedJson['tour_operators'][i]);
      temp.add(tourOperator);
    }
    _tourOperators = temp;
  }

  int get id => _id;
  String get name => _name;
  List<TourOperator> get tourOperators => _tourOperators;
}
