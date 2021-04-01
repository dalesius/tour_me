import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';

import '../blocs/auth/auth_bloc.dart';
import '../ui/landing_view.dart';
import '../ui/tour_operator/tour_operator_service_detail_view.dart';
import '../ui/tour_operator/tour_operator_services_view.dart';

final routeProvider = Provider<Yeet>((ref) {
  final authState = ref.watch(authBlocProvider.state);
  return authState.maybeWhen(
    authenticated: (_) => privateRoutes,
    orElse: () => publicRoutes,
  );
});

final publicRoutes = Yeet(
  children: [
    Yeet(
      path: '/',
      builder: (_, __) => LandingView(),
    ),
  ],
);

final privateRoutes = Yeet(
  children: [
    Yeet(
      path: '/',
      builder: (_, __) => TourOperatorServicesView(),
      children: [
        Yeet.custom(
          path: '/services/:id',
          builder: (params, __) => ServiceDetailsView(id: params['id']!),
          opaque: false,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ],
    ),
  ],
);
