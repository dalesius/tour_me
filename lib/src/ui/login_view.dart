import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../blocs/auth/auth_bloc.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
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
    final authState = useProvider(authBlocProvider.state);
    final authBloc = useProvider(authBlocProvider);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(backgroundColor: Colors.amberAccent),
          SizedBox(height: 25),
          authState.when(
            loading: () => CircularProgressIndicator(),
            authenticated: (user) => Text('Authenticated'),
            unauthenticated: (username, password, errorMessage) => Column(
              children: [
                TextFormField(
                  onChanged: (value) {
                    authBloc.usernameChanged(value);
                  },
                  decoration: InputDecoration(
                    errorText: errorMessage,
                    hintText: 'Please enter your username',
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  onChanged: (value) {
                    authBloc.passwordChanged(value);
                  },
                  decoration: InputDecoration(
                    errorText: errorMessage,
                    hintText: 'Please enter your password',
                  ),
                ),
                SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => authBloc.loginButtonPressed(
                        username: username, password: password),
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
