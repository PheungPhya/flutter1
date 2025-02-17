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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAcaOyMuY9l7iCj0-txCKzZJQ7jp08Jfss',
    appId: '1:148586252950:web:58b9434edda08c78d510b7',
    messagingSenderId: '148586252950',
    projectId: 'fir-auth-1-5605f',
    authDomain: 'fir-auth-1-5605f.firebaseapp.com',
    storageBucket: 'fir-auth-1-5605f.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCQS4goXv9EQdEqa08EGekyAhBiD66x1z4',
    appId: '1:148586252950:ios:ce4355ef6062d5cbd510b7',
    messagingSenderId: '148586252950',
    projectId: 'fir-auth-1-5605f',
    storageBucket: 'fir-auth-1-5605f.appspot.com',
    iosBundleId: 'com.example.firebaseAuth1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAcaOyMuY9l7iCj0-txCKzZJQ7jp08Jfss',
    appId: '1:148586252950:web:6f889718fa2f90ead510b7',
    messagingSenderId: '148586252950',
    projectId: 'fir-auth-1-5605f',
    authDomain: 'fir-auth-1-5605f.firebaseapp.com',
    storageBucket: 'fir-auth-1-5605f.appspot.com',
  );

}