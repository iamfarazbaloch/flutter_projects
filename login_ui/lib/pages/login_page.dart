import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController =
      TextEditingController();
  final TextEditingController _passwordController =
      TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              _headerText(),
              const Gap(40),
              _textField(
                controller: _emailController,
                hint: 'Email',
              ),
              const Gap(20),
              _textField(
                controller: _passwordController,
                hint: 'Password',
                obscureText: true,
              ),
              const Gap(10),
              Align(
                alignment: Alignment.centerRight,
                child: _forgotPasswordText(),
              ),
              const Gap(30),
              _loginButton(),
              const Gap(30),
              _loginWithDivider(),
              const Gap(30),
              _loginOptions(),
              const Gap(80),
              _signupText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome Back',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Gap(8),
        Text(
          'Sign in to continue',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  Widget _textField({
    required TextEditingController controller,
    required String hint,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey.shade400),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.black12,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.blue.shade900,
          ),
        ),
      ),
    );
  }

  Widget _forgotPasswordText() {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          fontSize: 14,
          color: Colors.blue.shade700,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _loginButton() {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
        ),
        child: const Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }

  Widget _loginWithDivider() {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.black26,
            thickness: 1,
          ),
        ),
        const Gap(10),
        Text(
          'Or continue with',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(10),
        const Expanded(
          child: Divider(
            color: Colors.black26,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Widget _loginOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialLoginButton(imagePath: 'assets/google.png'),
        const Gap(20),
        _socialLoginButton(
          imagePath: 'assets/facebook.png',
        ),
      ],
    );
  }

  Widget _socialLoginButton({required String imagePath}) {
    return Container(
      width: 70,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          width: 28,
          height: 28,
        ),
      ),
    );
  }

  Widget _signupText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
