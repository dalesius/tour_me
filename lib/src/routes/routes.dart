import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';

import '../blocs/auth/auth_bloc.dart';
import '../ui/landing_view.dart';
import '../ui/login_view.dart';
import '../ui/register_view.dart';
import '../ui/tour_operator/tour_operator_services_view.dart';

final routeProvider = Provider<Yeet>((ref) {
  final authState = ref.watch(authBlocProvider.state);
  return authState.maybeWhen(
    authenticated: (user) => privateRoutes,
    orElse: () => publicRoutes,
  );
});

final publicRoutes = Yeet(
  children: [
    Yeet(path: '/', builder: (_, __) => LandingView(), children: [
      Yeet(path: '/register', builder: (_, __) => RegisterView()),
      Yeet(path: '/login', builder: (_, __) => LoginView()),
    ]),
  ],
);

final privateRoutes = Yeet(
  children: [
    Yeet(
      path: '/tour_operator',
      builder: (_, __) => TourOperatorServicesView(),
    ),
  ],
);
