import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:platform_specific/firebase/authentication/signin_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final _auth = FirebaseAuth.instance;
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
            obscureText: true,
            onChanged: (value) {
              password = value;
            },
          ),
          ElevatedButton(
              onPressed: () {
                _auth.createUserWithEmailAndPassword(
                    email: email!, password: password!);
                print('User Resgistered');
              },
              child: Text('Sign Up')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SigninScreen(),
                    ));
              },
              child: Text('Already have an account Sign In')),
        ],
      )),
    );
  }
}
