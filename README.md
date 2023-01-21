# flutter_learning

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## memo
・packageの追加
    → [pub.dev](https://pub.dev/)

・flutter_riverpodの追加
    $ flutter pub add flutter_riverpod

・firebaseの追加
    [https://firebase.flutter.dev/docs/overview](https://firebase.flutter.dev/docs/overview)
    $ flutter pub add firebase_core
    $ dart pub global activate flutterfire_cli
    $ flutterfire configure
        (ERROR: command not found: flutterfire) -> .zshrファイルにexport PATH="$PATH":"$HOME/.pub-cache/bin"を追加。
        (ERROR: Failed to list Firebase projects) -> firebase login --reauth でfirebaseに再ログイン。
    
