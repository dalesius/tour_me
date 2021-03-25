import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'ui/login_view.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // final routes = useProvider(routeProvider);

    return MaterialApp(
      // routeInformationParser: YeetInformationParser(),
      // routerDelegate: YeeterDelegate(yeet: routes),
      title: 'TourMe!',
      theme: themeData,
      home: LoginView(),
    );
  }
}

// Global App style setup
final ThemeData themeData = ThemeData(
  primarySwatch: Colors.blue,
  backgroundColor: Colors.blueGrey.shade600,
);
