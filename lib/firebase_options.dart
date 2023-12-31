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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAEgBVFvm6ufdt3ni06rb4ifbFdSGBrtS4',
    appId: '1:722309084781:web:223a2bcad51657ac6d7164',
    messagingSenderId: '722309084781',
    projectId: 'postfolio-94f40',
    authDomain: 'postfolio-94f40.firebaseapp.com',
    storageBucket: 'postfolio-94f40.appspot.com',
    measurementId: 'G-62SLTSGYYV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCU5ONFeN_jKWtQGfcaO_4Nr2wkThyVp1k',
    appId: '1:722309084781:android:83236365d3d275b26d7164',
    messagingSenderId: '722309084781',
    projectId: 'postfolio-94f40',
    storageBucket: 'postfolio-94f40.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAhkbLx5EYBcCCS9ckqBkd1OZRAwYLRkKU',
    appId: '1:722309084781:ios:fde2eb68fa73ce546d7164',
    messagingSenderId: '722309084781',
    projectId: 'postfolio-94f40',
    storageBucket: 'postfolio-94f40.appspot.com',
    iosBundleId: 'com.example.myPostfolio',
  );
}
