import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/dance_user.dart';

abstract class UserRepository {
  Future<DanceUser?> getUser(String uid);
  Stream<DanceUser?> watchUser(String uid);
  Future<void> saveUser(DanceUser user);
}

class FirebaseUserRepository implements UserRepository {
  FirebaseUserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference get _users => _firestore.collection('users');

  @override
  Future<DanceUser?> getUser(String uid) async {
    final doc = await _users.doc(uid).get();
    if (!doc.exists) return null;
    return DanceUser.fromMap(doc.data() as Map<String, dynamic>);
  }

  @override
  Stream<DanceUser?> watchUser(String uid) {
    return _users.doc(uid).snapshots().map((doc) {
      if (!doc.exists) return null;
      return DanceUser.fromMap(doc.data() as Map<String, dynamic>);
    });
  }

  @override
  Future<void> saveUser(DanceUser user) {
    return _users.doc(user.id).set(user.toMap(), SetOptions(merge: true));
  }
}
