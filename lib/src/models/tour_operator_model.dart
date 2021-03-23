class TourOperator {
  late int _id;
  late String _name;

  TourOperator.fromJson(tourOperator) {
    _id = tourOperator['id'];
    _name = tourOperator['name'];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  int get id => _id;
  String get name => _name;
}
