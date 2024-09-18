import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_pharmacy/constants/firebaseConstants/firebase_constants.dart';
import 'package:e_pharmacy/pages/login/model/user.dart';

class DbHelper {
  static const String _collectionUsers = FirebaseConstants.userCollection;
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<void> addUser(UserModel user) {
    final doc = _db.collection(_collectionUsers).doc(user.uid);
    return doc.set(user.toJson());
  }

  static Stream<UserModel> getUserById(String uid) => _db
      .collection(_collectionUsers)
      .doc(uid)
      .snapshots()
      .map((event) => UserModel.fromJson(event.data() as Map<String, dynamic>));

  static Future<void> updateUserInfo(
      String uid, UserModel user,) {
    return _db.collection(_collectionUsers).doc(uid).update(user.toJson());
  }
}
