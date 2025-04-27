import 'package:flutter/material.dart';
import 'package:go_nuts_app/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Nuts',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFED8DF),
      ),
      home: const WelcomePage(),
    );
  }
}
