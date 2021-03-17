import 'package:tour_me/Views/AgencyView.dart';
import 'package:tour_me/Views/LandingView.dart';
import 'package:tour_me/Views/LoginView.dart';
import 'package:tour_me/Views/RegisterView.dart';
import 'package:yeet/yeet.dart';

final yeet = Yeet(
  children: [
    Yeet(
      path: '/',
      builder: (_, __) => AgencyView(),
      // builder: (_, __) => LandingView(),
      children: [
        Yeet(
          path: '/login',
          builder: (params, _) => LoginView(),
        ),
        Yeet(
          path: '/register',
          builder: (_, __) => RegisterView(),
        ),
      ],
    ),
  ],
);
