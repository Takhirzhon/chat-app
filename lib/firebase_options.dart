// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
// import 'firebase_options.dart';
// await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
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
    apiKey: 'AIzaSyBEe3Xqmdr7BDsYdY9fHPvZUo9aXQToaEM',
    appId: '1:566710083057:web:379c4e990a7634e0b73850',
    messagingSenderId: '566710083057',
    projectId: 'chat-flutter-d99c7',
    authDomain: 'chat-flutter-d99c7.firebaseapp.com',
    storageBucket: 'chat-flutter-d99c7.appspot.com',
    measurementId: 'G-PFB4450BY4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDtdoOmi7eVULvttsFUQO5yW1nxTPFM5nk',
    appId: '1:566710083057:android:0584ce995abfdf87b73850',
    messagingSenderId: '566710083057',
    projectId: 'chat-flutter-d99c7',
    storageBucket: 'chat-flutter-d99c7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0HWGvW61YNiVavb5pDeKmEbTQt6xOPVE',
    appId: '1:566710083057:ios:d9c4ca435a2ab9dbb73850',
    messagingSenderId: '566710083057',
    projectId: 'chat-flutter-d99c7',
    storageBucket: 'chat-flutter-d99c7.appspot.com',
    iosBundleId: 'com.example.chat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0HWGvW61YNiVavb5pDeKmEbTQt6xOPVE',
    appId: '1:566710083057:ios:d9c4ca435a2ab9dbb73850',
    messagingSenderId: '566710083057',
    projectId: 'chat-flutter-d99c7',
    storageBucket: 'chat-flutter-d99c7.appspot.com',
    iosBundleId: 'com.example.chat',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBEe3Xqmdr7BDsYdY9fHPvZUo9aXQToaEM',
    appId: '1:566710083057:web:8e118eecc4c86c68b73850',
    messagingSenderId: '566710083057',
    projectId: 'chat-flutter-d99c7',
    authDomain: 'chat-flutter-d99c7.firebaseapp.com',
    storageBucket: 'chat-flutter-d99c7.appspot.com',
    measurementId: 'G-KDB4YVHTWB',
  );
}
