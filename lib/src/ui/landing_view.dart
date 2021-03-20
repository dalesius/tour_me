import 'package:flutter/material.dart';

// TODO: Logged in ?? [OperatorView || AgencyView] : [LandingView]
class LandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            children: [
              SizedBox(height: 30.0),
              FlutterLogo(size: 200.0),
              Text(
                'TourMe!',
                style: TextStyle(
                  fontSize: 30,
                ),
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
