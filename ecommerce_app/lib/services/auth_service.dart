import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;

  Future<String?> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth
              .createUserWithEmailAndPassword(
                email: email.trim(),
                password: password.trim(),
              );
      await _firebaseFirestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
            'name': name.trim(),
            'email': email.trim(),
          });
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
            email: email.trim(),
            password: password.trim(),
          );
      await _firebaseFirestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
            'email': email.trim(),
            'password': password.trim(),
          });
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
