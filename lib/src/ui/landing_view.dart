import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../blocs/login/login_bloc.dart';

class LandingView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final loginState = useProvider(loginBloc.state);
    final loginBlocProvider = useProvider(loginBloc);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 25),
            Hero(
              tag: 'tourMeLogo',
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  'TourMe!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                radius: 60,
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      loginBlocProvider.emailChanged(value);
                    },
                    decoration: InputDecoration(
                      errorText: loginState.emailError,
                      hintText: 'Please enter your email',
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    onChanged: (value) {
                      loginBlocProvider.passwordChanged(value);
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      errorText: loginState.passwordError,
                      hintText: 'Please enter your password',
                    ),
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        loginBlocProvider.loginButtonPressed();
                      },
                      child: Text('Login'),
                    ),
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        loginBlocProvider.registerButtonPressed();
                      },
                      child: Text('Register'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
