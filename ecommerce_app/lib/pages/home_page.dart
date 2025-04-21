import 'package:ecommerce_app/widgets/my_button.dart';
import 'package:ecommerce_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController =
        TextEditingController();
    final TextEditingController passwordController =
        TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/secure.png',
                  height: 400,
                ),
              ),
              Gap(30),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              Gap(20),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              Gap(40),
              MyButton(
                onTap: () {},
                text: 'Login',
                color: Colors.blue.shade800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
