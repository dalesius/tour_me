import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
    var email = useTextEditingController();
    var password = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Please enter your email',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Please enter your password',
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
