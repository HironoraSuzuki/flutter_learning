import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainModel());

class MainModel extends ChangeNotifier {
  int counter = 0;
  Future<void> createUser({required BuildContext context}) async {
    counter++;
    // 登録するUserDate
    final Map<String, dynamic> userData = {
      "userName": "Alice",
      "uid": "firstUser"
    };
    // FirestoreにuserDataを登録
    await FirebaseFirestore.instance.collection('users').doc().set(userData);
    // スナックバーで登録されたことを表示
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('ユーザーが作成されました')));
    notifyListeners();
  }
}
