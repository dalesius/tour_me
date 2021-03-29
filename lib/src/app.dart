import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/routes/routes.dart';
import 'package:yeet/yeet.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final routes = useProvider(routeProvider);

    return MaterialApp.router(
      routeInformationParser: YeetInformationParser(),
      routerDelegate: YeeterDelegate(yeet: routes),
      title: 'TourMe!',
      theme: themeData,
    );
  }
}

// Global App style setup
final ThemeData themeData = ThemeData(
  primarySwatch: Colors.blue,
  backgroundColor: Colors.blueGrey.shade600,
);
