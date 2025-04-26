import 'package:firebase_auth/firebase_auth.dart';

class OtpService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required Function(String verificationId) onCodeSent,
    required Function(String error) onError,
  }) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (
        PhoneAuthCredential credential,
      ) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        onError(e.message ?? 'Verification failed');
      },
      codeSent: (String verificationId, int? resendToken) {
        onCodeSent(verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<void> signInWithOtp({
    required String verificationId,
    required String smsCode,
    required Function(UserCredential) onSuccess,
    required Function(String error) onError,
  }) async {
    try {
      PhoneAuthCredential credential =
          PhoneAuthProvider.credential(
            verificationId: verificationId,
            smsCode: smsCode,
          );
      UserCredential userCredential = await _auth
          .signInWithCredential(credential);
      onSuccess(userCredential);
    } catch (e) {
      onError(e.toString());
    }
  }
}
