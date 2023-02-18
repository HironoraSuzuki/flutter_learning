import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainModel());

class MainModel extends ChangeNotifier {
  int counter = 0;
  Future<void> createUser({required BuildContext context}) async {
    counter++;
    // uuidでランダムにidを生成
    var uuid = Uuid();
    final String v4 = uuid.v4();
    final Map<String, dynamic> userData = {
      "userName": "Alice",
      "uid": v4
    };
    // userDataとdoc()にuuidを指定することでfirebaseのドキュメントとフィールドに同じランダムIDを登録することができる
    await FirebaseFirestore.instance.collection('users').doc(v4).set(userData);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('ユーザーが作成されました')));
    notifyListeners();
  }
}
