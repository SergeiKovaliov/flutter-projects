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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBX4Z93fwWBn3UugBl8sVw0fK2-TTAVSls',
    appId: '1:203854044531:android:1875d7a505af45436bb906',
    messagingSenderId: '203854044531',
    projectId: 'flutter-chat-app-b6f8d',
    storageBucket: 'flutter-chat-app-b6f8d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDNaxLX7d1-WIn1-XVx7RkFHt5PjTiupQ',
    appId: '1:203854044531:ios:a2dc9ca1e1fc8dce6bb906',
    messagingSenderId: '203854044531',
    projectId: 'flutter-chat-app-b6f8d',
    storageBucket: 'flutter-chat-app-b6f8d.appspot.com',
    iosClientId: '203854044531-23aqsq0noe4v1o9nc6gkb9lvi4vrvocr.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
