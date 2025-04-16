import 'package:dashboard_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 25.0,
        ),
        scaffoldBackgroundColor: Colors.grey.shade300,
      ),
      home: HomePage(),
    );
  }
}
