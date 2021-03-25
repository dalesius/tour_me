import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/agency_repository.dart';

class AgencyBloc extends StateNotifier<AgencyState> {
  final AgencyRepository agencyRepository;

  AgencyBloc({required this.agencyRepository})
      : super(AgencyState()); // Controller

}

final agencyBloc = StateNotifierProvider<AgencyBloc>((ref) {
  final agencyRepo = ref.watch(agencyRepository);
  return AgencyBloc(agencyRepository: agencyRepo);
});

class AgencyState {}
