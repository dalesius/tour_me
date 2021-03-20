List<Map<String, dynamic>> mockAgencies = [
  {
    'id': 1,
    'name': 'Costa Rica Travel',
    'tour_operators':
        mockTourOperators.where((tourOperator) => tourOperator['id'] < 3),
  },
];

List<Map<String, dynamic>> mockTourOperators = [
  {
    'id': 1,
    'name': 'Luquitas Surfing',
    'services': mockTourOperatorServices
        .where((service) => service['tour_operator_id'] == 1),
  },
  {
    'id': 2,
    'name': 'Pacific Coast Dive Center',
    'services': mockTourOperatorServices
        .where((service) => service['tour_operator_id'] == 2),
  },
  {
    'id': 3,
    'name': 'Crazy Monkey Adventure Tours',
    'services': mockTourOperatorServices
        .where((service) => service['tour_operator_id'] == 3),
  },
];

List<Map<String, dynamic>> mockTourOperatorServices = [
  {
    'id': 1,
    'tour_operator_id': 2,
    'name': 'Discover Scuba Diving',
  },
  {
    'id': 2,
    'tour_operator_id': 1,
    'name': 'Surf beginners course',
  },
  {
    'id': 3,
    'tour_operator_id': 3,
    'name': 'ATV Tour',
  },
  {
    'id': 4,
    'tour_operator_id': 2,
    'name': 'Snorkeling',
  },
  {
    'id': 5,
    'tour_operator_id': 2,
    'name': 'Diving Las Catalinas',
  },
];
