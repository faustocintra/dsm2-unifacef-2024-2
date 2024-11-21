// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBj3QjTdYGMrXuZoIJqUgnSvoJOd-M7TtA',
    appId: '1:554118240303:web:db2998a7e69df7fe9e4eda',
    messagingSenderId: '554118240303',
    projectId: 'facefpalooza-787a4',
    authDomain: 'facefpalooza-787a4.firebaseapp.com',
    storageBucket: 'facefpalooza-787a4.appspot.com',
    measurementId: 'G-JT4JV8LLKS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCc0Gm_wD0Sophq6IQo3VEdnSQNpdQOtjQ',
    appId: '1:554118240303:android:5492927a2e92e5a09e4eda',
    messagingSenderId: '554118240303',
    projectId: 'facefpalooza-787a4',
    storageBucket: 'facefpalooza-787a4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACtBdxRrXs4ZUddU6X7us_T3M7fpIRZsU',
    appId: '1:554118240303:ios:679a8b1afa21cf3a9e4eda',
    messagingSenderId: '554118240303',
    projectId: 'facefpalooza-787a4',
    storageBucket: 'facefpalooza-787a4.appspot.com',
    iosBundleId: 'com.example.facefpalooza',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACtBdxRrXs4ZUddU6X7us_T3M7fpIRZsU',
    appId: '1:554118240303:ios:679a8b1afa21cf3a9e4eda',
    messagingSenderId: '554118240303',
    projectId: 'facefpalooza-787a4', 
    storageBucket: 'facefpalooza-787a4.appspot.com',
    iosBundleId: 'com.example.facefpalooza',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBj3QjTdYGMrXuZoIJqUgnSvoJOd-M7TtA',
    appId: '1:554118240303:web:d836568e5c71e9809e4eda',
    messagingSenderId: '554118240303',
    projectId: 'facefpalooza-787a4',
    authDomain: 'facefpalooza-787a4.firebaseapp.com',
    storageBucket: 'facefpalooza-787a4.appspot.com',
    measurementId: 'G-4N3T8S0HL0',
  );

}