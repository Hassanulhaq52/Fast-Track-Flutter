import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final auth = FirebaseAuth.instance;
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          TextField(
            onChanged: (value) {
              email = value;
            },
          ),
          TextField(
            onChanged: (value) {
              password = value;
            },
          ),
          ElevatedButton(
              onPressed: () {
                auth.createUserWithEmailAndPassword(
                    email: email!, password: password!);
                print('User Resgistered');
              },
              child: Text('Sign Up'))
        ],
      )),
    );
  }
}
