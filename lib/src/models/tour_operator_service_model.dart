class TourOperatorService {
  late int _id;
  late int _tourOperatorId;
  late String _name;

  TourOperatorService.fromJson(tourOperatorService) {
    _id = tourOperatorService['id'];
    _name = tourOperatorService['name'];
    _tourOperatorId = tourOperatorService['tour_operator_id'];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'tour_operator_id': tourOperatorId,
      };

  int get id => _id;
  int get tourOperatorId => _tourOperatorId;
  String get name => _name;
}
