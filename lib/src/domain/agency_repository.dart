import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/services/api/agency_api.dart';
import '../models/agency/agency_model.dart';

class AgencyRepository {
  AgencyApi agencyApi;

  AgencyRepository({required this.agencyApi});

  Future<List<Agency>> fetchAllAgencies() async {
    try {
      final agencyList = await agencyApi.fetchAllAgencies();
      return agencyList.map((agency) => Agency.fromJson(json: agency)).toList();
    } catch (e) {
      return [];
    }
  }
}

// Dependency Injection & Singleton
final agencyRepository = Provider<AgencyRepository>((ref) {
  final service = ref.watch(agencyApi);
  return AgencyRepository(agencyApi: service);
});
