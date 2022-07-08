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
    apiKey: 'AIzaSyCxVRCFRKTPM5JlQBPjJpef9J_Sw4RzY6Q',
    appId: '1:572847659666:web:125f16016f5382753be44b',
    messagingSenderId: '572847659666',
    projectId: 'foody-4f466',
    authDomain: 'foody-4f466.firebaseapp.com',
    storageBucket: 'foody-4f466.appspot.com',
    measurementId: 'G-J6WM0S07E1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQQQZ9voPoUGJ1Z52jrpIwjvR-y_35MRY',
    appId: '1:572847659666:android:28fe1e5d0c6c69073be44b',
    messagingSenderId: '572847659666',
    projectId: 'foody-4f466',
    storageBucket: 'foody-4f466.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgDt5kErVhRJz9lUV7MXXfbaK2w66LWg8',
    appId: '1:572847659666:ios:c47e33928f74a26b3be44b',
    messagingSenderId: '572847659666',
    projectId: 'foody-4f466',
    storageBucket: 'foody-4f466.appspot.com',
    iosClientId:
        '572847659666-fopa8s8ct8esfm13v2ni3sgpkobs2i73.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFoodApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgDt5kErVhRJz9lUV7MXXfbaK2w66LWg8',
    appId: '1:572847659666:ios:c47e33928f74a26b3be44b',
    messagingSenderId: '572847659666',
    projectId: 'foody-4f466',
    storageBucket: 'foody-4f466.appspot.com',
    iosClientId:
        '572847659666-fopa8s8ct8esfm13v2ni3sgpkobs2i73.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFoodApp',
  );
}