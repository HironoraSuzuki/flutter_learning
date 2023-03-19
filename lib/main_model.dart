import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_learning/domain/firestore_user/firestore_user.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainModel());

class MainModel extends ChangeNotifier {
  int counter = 0;
  Future<void> createUser({required BuildContext context}) async {
    counter++;
    var uuid = Uuid();
    final String v4 = uuid.v4();
    final Timestamp now = Timestamp.now();
    final FirestoreUser firestoreUser = FirestoreUser(
      createdAt: now,
      updatedAt: now,
      userName: "Alice",
      uid: v4
    );
    final Map<String, dynamic> userData = firestoreUser.toJson();
    await FirebaseFirestore.instance.collection('users').doc(v4).set(userData);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('ユーザーが作成されました')));
    notifyListeners();
  }
}
