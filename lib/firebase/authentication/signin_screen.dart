import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:platform_specific/firebase/welcome_screen.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

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
              onChanged: (value) {
                password = value;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  _auth.signInWithEmailAndPassword(
                      email: email!, password: password!);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WelcomeScreen(),
                      ));
                },
                child: Text('Sign In'))
          ],
        ),
      ),
    );
  }
}
