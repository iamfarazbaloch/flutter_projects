import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login_ui/pages/login_page.dart';
import 'package:login_ui/pages/sign_up_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildSplashScreen());
  }

  Widget _buildSplashScreen() {
    return Stack(
      children: [_background(), _logoAndContent()],
    );
  }

  Widget _background() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 7, 25, 122),
            Color.fromARGB(255, 149, 196, 224),
          ],
          stops: [0.38, 0.4],
        ),
      ),
    );
  }

  Widget _logoAndContent() {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 40.0,
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  'assets/welcome.png',
                  height: 300,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            padding: const EdgeInsets.all(20),
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const Text(
                  "Find the students that fits your knowledge..",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(20),
                const Text(
                  "Ut enim ad mi nisi ut aliquip ex ea commodo consequat. velit esse cillum dolore eu fugiat.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
                const Spacer(),
                _button(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => const SignUpPage(),
                      ),
                    );
                  },
                  text: 'Sign Up',
                  color: Colors.blue.shade900,
                  textColor: Colors.white,
                ),
                _button(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => const LoginPage(),
                      ),
                    );
                  },
                  text: 'Login',
                  color: Colors.grey.shade200,
                  textColor: Colors.blue.shade800,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _button({
    required void Function()? onTap,
    required String text,
    required Color color,
    required Color textColor,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
