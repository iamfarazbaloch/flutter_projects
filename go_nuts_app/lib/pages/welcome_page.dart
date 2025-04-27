import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                left: 30,
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
                    Text(
                      'Gonuts with Donuts is a Sri Lanka\ndedicated food outlets for specialize\nmanufacturing of Donuts in Colombo,\nSri Lanka.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFF7074),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
