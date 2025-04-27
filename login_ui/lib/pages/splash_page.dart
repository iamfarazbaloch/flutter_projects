import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildSplashScreen(context));
  }

  Widget _buildSplashScreen(BuildContext context) {
    return Stack(
      children: [_background(context), _logo(context)],
    );
  }

  Widget _background(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 7, 25, 122),
            const Color.fromARGB(255, 149, 196, 224),
          ],
          stops: [0.38, 0.4],
        ),
      ),
    );
  }

  Widget _logo(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
                left: 40.0,
                bottom: 20.0,
                right: 40.0,
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
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
              margin: const EdgeInsets.only(
                top: 20.0,
                left: 30.0,
                right: 30.0,
              ),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "Find the students that fits your knowledge and interests",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
