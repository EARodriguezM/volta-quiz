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
    apiKey: 'AIzaSyA7Rq-fUMojbvlvgwQdKPLp14oIB2-dUUc',
    appId: '1:245184640165:web:82eda4191965d733a6094c',
    messagingSenderId: '245184640165',
    projectId: 'quizzle-test',
    authDomain: 'quizzle-test.firebaseapp.com',
    storageBucket: 'quizzle-test.appspot.com',
    measurementId: 'G-H4VFPC5JTY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXVviEpZ63Vjt21Y9ksSU7FwFLJWePw2Q',
    appId: '1:245184640165:android:c0841f75a8fbc67da6094c',
    messagingSenderId: '245184640165',
    projectId: 'quizzle-test',
    storageBucket: 'quizzle-test.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCIU0Hhqk3_a-4f4_tpvUnsH03zFYLpQ4s',
    appId: '1:245184640165:ios:b7e0a9872e4c6021a6094c',
    messagingSenderId: '245184640165',
    projectId: 'quizzle-test',
    storageBucket: 'quizzle-test.appspot.com',
    androidClientId: '245184640165-582thcduq28ikjeih81f91777pg5buuf.apps.googleusercontent.com',
    iosClientId: '245184640165-77u4vne4v69jkg1s86p86sud3ooashkl.apps.googleusercontent.com',
    iosBundleId: 'com.example.voltaQuiz',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCIU0Hhqk3_a-4f4_tpvUnsH03zFYLpQ4s',
    appId: '1:245184640165:ios:b7e0a9872e4c6021a6094c',
    messagingSenderId: '245184640165',
    projectId: 'quizzle-test',
    storageBucket: 'quizzle-test.appspot.com',
    androidClientId: '245184640165-582thcduq28ikjeih81f91777pg5buuf.apps.googleusercontent.com',
    iosClientId: '245184640165-77u4vne4v69jkg1s86p86sud3ooashkl.apps.googleusercontent.com',
    iosBundleId: 'com.example.voltaQuiz',
  );
}
