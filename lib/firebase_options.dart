// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
///
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCLz05gB3xcBkDBzP1w4mMTk7dSK9OqsKI',
    appId: '1:955213691404:android:5f8480c0b039aeb07b4c29',
    messagingSenderId: '955213691404',
    projectId: 'worknoti',
    storageBucket: 'worknoti.appspot.com',
  );

  static FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyrF7DgyxHolkobVVQWR8NVDSegxyMOxY',
    appId: '1:955213691404:ios:375670ed7a8db5b07b4c29',
    messagingSenderId: '955213691404',
    projectId: 'worknoti',
    storageBucket: 'worknoti.appspot.com',
    iosClientId: '955213691404-k7cvt44rec2lv47rj7d2hk0tbvrapmaj.apps.googleusercontent.com',
    iosBundleId: 'com.example.edumazone',
  );
}