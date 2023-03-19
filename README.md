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
    
・cloud_firestoreの追加
    [https://firebase.flutter.dev/docs/firestore/overview](https://firebase.flutter.dev/docs/firestore/overview)
    $ flutter pub add cloud_firestore
    エミュレータ起動時、「minSdkVersion 16 cannot be smaller than version 19 declared in library :cloud_firestore」のようなエラーが発生した場合、
    android>app>build.gradle の minSdkVersion を以下のように 19 以上にあげる。
        minSdkVersion flutter.minSdkVersion -> minSdkVersion 23
        [参考](https://www.mechengjp.com/%E3%80%90flutter%E3%82%A8%E3%83%A9%E3%83%BC%E8%A7%A3%E6%B1%BA%E6%B3%95%E3%80%91uses-sdkminsdkversion-16-cannot-be-smaller-than-version-19-declared-in-library-%E3%81%A8%E3%81%84%E3%81%86%E3%82%A8/)
    
・uuidの追加
    [https://pub.dev/packages/uuid/install](https://pub.dev/packages/uuid/install)
    $ flutter pub add uuid

・freezedでjsonを生成
    $ flutter pub add freezed --dev
    $ flutter pub add freezed_annotation --edv
    $ flutter pub add json_serializable --edv
    $ flutter pub add build_runner --edv
    ソースを作成後(今回はfirestore_user.dart)
    $ flutter pub run build_runner build
    ※ flutter clean しないとうまく生成されない時がある。
