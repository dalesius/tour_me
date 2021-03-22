class Agency {
  late int _id;
  late String _name;

  int get id => _id;
  String get name => _name;

  Agency.fromJson(Map<String, dynamic> parsedJson) {
    _id = parsedJson['id'];
    _name = parsedJson['name'];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
