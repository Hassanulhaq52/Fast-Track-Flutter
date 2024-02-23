import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:platform_specific/api_integration/screens/fact_screen_model.dart';
import 'package:platform_specific/firebase/authentication/signup_screen.dart';
import 'package:platform_specific/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Platform Specific Widgets',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: SignupScreen());
  }
}
