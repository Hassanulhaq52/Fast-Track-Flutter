// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAgyU8W3MDJrwGlCQvF0Ykp-K_rWce6GcY',
    appId: '1:1044741675581:android:203c985aaa3ab45f402854',
    messagingSenderId: '120922277909',
    projectId: 'fast-track-flutter',
    storageBucket: 'fast-track-flutter.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAgyU8W3MDJrwGlCQvF0Ykp-K_rWce6GcY',
    appId: '1:1044741675581:android:203c985aaa3ab45f402854',
    messagingSenderId: '120922277909',
    projectId: 'fast-track-flutter',
    storageBucket: 'fast-track-flutter.appspot.com',

  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAgyU8W3MDJrwGlCQvF0Ykp-K_rWce6GcY',
    appId: '1:1044741675581:android:203c985aaa3ab45f402854',
    messagingSenderId: '120922277909',
    projectId: 'fast-track-flutter',
    storageBucket: 'fast-track-flutter.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
      apiKey: 'AIzaSyAgyU8W3MDJrwGlCQvF0Ykp-K_rWce6GcY',
      appId: '1:1044741675581:android:203c985aaa3ab45f402854',
      messagingSenderId: '120922277909',
      projectId: 'fast-track-flutter',
    storageBucket: 'fast-track-flutter.appspot.com',);
}
