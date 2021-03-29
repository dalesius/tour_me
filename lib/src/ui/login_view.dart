import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';
import '../blocs/login/login_bloc.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              context.yeet();
            },
          ),
          title: Text('Login')),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 450, minWidth: 250),
          child: LoginWidget(),
        ),
      ),
    );
  }
}

class LoginWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final loginState = useProvider(loginBloc.state);
    final loginBlocProvider = useProvider(loginBloc);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(backgroundColor: Colors.amberAccent),
          SizedBox(height: 25),
          Column(
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
            ],
          ),
        ],
      ),
    );
  }
}
