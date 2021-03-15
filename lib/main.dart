import 'package:flutter/material.dart';
import 'Screens/Home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TourMe!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'TourMe! Home Page'),
    );
  }
}
