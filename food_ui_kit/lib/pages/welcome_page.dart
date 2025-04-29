import 'package:flutter/material.dart';
import 'package:food_ui_kit/pages/login_page.dart'
    show LoginPage;
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFFF4B3A),
            ),
          ),
          Positioned(
            top: 90,
            left: 40,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset('assets/images/hat.png'),
            ),
          ),
          Positioned(
            top: 180,
            left: 40,
            child: Text(
              'Food for\nEveryone',
              style: GoogleFonts.varelaRound(
                color: Colors.white,
                fontSize: 80,
                fontWeight: FontWeight.bold,
                letterSpacing: -5,
                wordSpacing: -5,
                height: 1,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 100,
            child: Image.asset('assets/images/boy.png'),
          ),
          Positioned(
            left: 0,
            bottom: 100,
            child: Image.asset('assets/images/girl.png'),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 300,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x1AFF470B),
                    Color(0xFFFF470B),
                  ],
                  stops: [0.1, 0.6],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(child: _button(context)),
          ),
        ],
      ),
    );
  }

  Widget _button(BuildContext context) {
    return GestureDetector(
      onTap:
          () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          ),
      child: Container(
        width: 340,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: GoogleFonts.varelaRound(
              color: Color(0xFFFF4B3A),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
