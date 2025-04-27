import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_nuts_app/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFED8DF),
      body: Stack(
        children: [
          Positioned(
            child: Image.asset('assets/images/top.png'),
          ),
          Positioned(
            left: 180,
            top: 50,
            child: Image.asset('assets/images/middle.png'),
          ),
          Image.asset('assets/images/welcome.png'),
          Positioned(
            right: 0,
            top: 380,
            child: Image.asset('assets/images/bottom.png'),
          ),
          Stack(
            children: [
              Positioned(
                top: 420,
                left: 40,
                right: 0,
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gonuts\nwith\ndonuts',
                      style: TextStyle(
                        fontSize: 55,
                        color: Color(0xFFFF7074),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(10),
                    Text(
                      'Gonuts with Donuts is a Sri Lanka\ndedicated food outlet for specialized\nmanufacturing of Donuts in Colombo,\nSri Lanka.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFF7074),
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                      ),
                    ),
                    Gap(20),
                    _button(context),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _button(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        },
        child: Container(
          height: 80,
          width: 600,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Center(
            child: Text(
              'Get Started',
              style: TextStyle(
                color: Color(0xFFFF7074),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
