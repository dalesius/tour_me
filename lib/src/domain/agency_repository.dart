import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/agency_service.dart';
import '../models/agency_model.dart';

class AgencyRepository {
  AgencyService agencyService;

  AgencyRepository({required this.agencyService});

  Future<List<Agency>> fetchAllAgencies() async {
    try {
      final agencyList = await agencyService.fetchAllAgencies();
      return agencyList.map((agency) => Agency.fromJson(agency)).toList();
    } catch (e) {
      return [];
    }
  }
}

// Dependency Injection & Singleton
final agencyRepository = Provider((ref) {
  final agencyApi = ref.watch(agencyService);
  AgencyRepository(agencyService: agencyApi);
});
