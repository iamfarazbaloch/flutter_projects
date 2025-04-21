import 'package:ecommerce_app/pages/login_page.dart';
import 'package:ecommerce_app/widgets/my_button.dart'
    show MyButton;
import 'package:ecommerce_app/widgets/my_text_field.dart'
    show MyTextField;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController =
      TextEditingController();
  final TextEditingController passwordController =
      TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _signUp() {
    FocusScope.of(context).unfocus(); // Hide keyboard
    if (_formKey.currentState!.validate()) {
      if (passwordController.text !=
          confirmPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Passwords do not match"),
          ),
        );
        return;
      }

      // TODO: Add sign-up logic here

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Account created successfully"),
        ),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const LoginPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/secure.png',
                      height: 350,
                    ),
                  ),
                  const Gap(30),
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  const Gap(20),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                  ),
                  const Gap(20),
                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      return null;
                    },
                  ),
                  const Gap(30),
                  MyButton(
                    onTap: _signUp,
                    text: 'Sign up',
                    color: Colors.blue.shade800,
                  ),
                  const Gap(50),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (_) => const LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
