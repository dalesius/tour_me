import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade600,
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            children: [
              SizedBox(height: 30.0),
              FlutterLogo(size: 200.0),
              Text(
                'TourMe!',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 30.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 30.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Register'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
