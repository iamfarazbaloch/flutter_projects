import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../utils/phone_utils.dart';

class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({Key? key}) : super(key: key);

  @override
  State<PhoneInputScreen> createState() =>
      _PhoneInputScreenState();
}

class _PhoneInputScreenState
    extends State<PhoneInputScreen> {
  final _phoneController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  String? _errorText;

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _sendOTP() async {
    final phone = PhoneUtils.formatPakistanPhone(
      _phoneController.text,
    );

    if (!PhoneUtils.isValidPakistanPhone(phone)) {
      setState(
        () =>
            _errorText =
                'Please enter a valid Pakistan mobile number',
      );
      return;
    }

    setState(() {
      _isLoading = true;
      _errorText = null;
    });

    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
          if (!mounted) return;
          Navigator.of(
            context,
          ).pushReplacementNamed('/home');
        },
        verificationFailed: (e) {
          setState(() {
            _isLoading = false;
            _errorText = e.message;
          });
        },
        codeSent: (verificationId, _) {
          setState(() => _isLoading = false);
          Navigator.of(context).pushNamed(
            '/verify',
            arguments: {
              'verificationId': verificationId,
              'phoneNumber': phone,
            },
          );
        },
        codeAutoRetrievalTimeout: (_) {},
        timeout: const Duration(seconds: 60),
      );
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorText = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Verification'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child:
              _isLoading
                  ? const Center(
                    child: CircularProgressIndicator(),
                  )
                  : _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/pakistan_flag.png',
              height: 120,
            ),
            const SizedBox(height: 40),
            const Text(
              'Enter Your Phone Number',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'We will send a verification code to your number',
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                hintText: '03XX XXXXXXX',
                prefixText: '+92 ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                errorText: _errorText,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _sendOTP,
              child: const Text(
                'Continue',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'By continuing, you agree to our Terms & Privacy Policy',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
