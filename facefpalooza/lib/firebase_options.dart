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
    apiKey: 'AIzaSyBmENE-Rcy2HeWF14o6grXgHXPuSu9uGhM',
    appId: '1:946819523658:web:a5c18717dee3cfd7df32b3',
    messagingSenderId: '946819523658',
    projectId: 'facefpalooza-39fc9',
    authDomain: 'facefpalooza-39fc9.firebaseapp.com',
    storageBucket: 'facefpalooza-39fc9.firebasestorage.app',
    measurementId: 'G-6ZBFVVGM2C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBT82fOVJd8Q5WDXwSOMc644mGvnotTVVQ',
    appId: '1:946819523658:android:3f244f804041ba85df32b3',
    messagingSenderId: '946819523658',
    projectId: 'facefpalooza-39fc9',
    storageBucket: 'facefpalooza-39fc9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDN9glNshYVdzVQWeDL_gR8ArzJkmAz0rM',
    appId: '1:946819523658:ios:54c9c4c9814844b5df32b3',
    messagingSenderId: '946819523658',
    projectId: 'facefpalooza-39fc9',
    storageBucket: 'facefpalooza-39fc9.firebasestorage.app',
    iosBundleId: 'com.example.facefpalooza',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDN9glNshYVdzVQWeDL_gR8ArzJkmAz0rM',
    appId: '1:946819523658:ios:54c9c4c9814844b5df32b3',
    messagingSenderId: '946819523658',
    projectId: 'facefpalooza-39fc9',
    storageBucket: 'facefpalooza-39fc9.firebasestorage.app',
    iosBundleId: 'com.example.facefpalooza',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBmENE-Rcy2HeWF14o6grXgHXPuSu9uGhM',
    appId: '1:946819523658:web:d232eb18613b2bd7df32b3',
    messagingSenderId: '946819523658',
    projectId: 'facefpalooza-39fc9',
    authDomain: 'facefpalooza-39fc9.firebaseapp.com',
    storageBucket: 'facefpalooza-39fc9.firebasestorage.app',
    measurementId: 'G-7QENTNLGPY',
  );

}