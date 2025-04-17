import 'package:flutter/material.dart';
import 'package:food_app/widgets/my_search_field.dart';
import 'package:google_fonts/google_fonts.dart'
    show GoogleFonts;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Foodgo',
                    style: GoogleFonts.lobster(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                  Image.asset(
                    'assets/images/Mask group.png',
                    height: 44,
                  ),
                ],
              ),
              Text('Order your favorite food!'),
              SizedBox(height: 30),
              MySearchField(),
            ],
          ),
        ),
      ),
    );
  }
}
