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
    } on FirebaseAuthException catch (e) {
      return e.message;
    } catch (e) {
      return 'An unexpected error occurred';
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
          .get();

      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    } catch (e) {
      return 'An unexpected error occurred';
    }
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }
}
