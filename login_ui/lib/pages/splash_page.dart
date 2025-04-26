import 'package:flutter/material.dart';

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
    return Container(
      color: Colors.blue,
      child: Center(child: Text('Splash Screen')),
    );
  }
}
