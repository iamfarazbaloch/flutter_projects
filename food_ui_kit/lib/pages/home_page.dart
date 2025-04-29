import 'package:flutter/material.dart';
import 'package:food_ui_kit/widgets/my_search_field.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 12.0,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icons/menu.png'),
                  Image.asset('assets/icons/cart.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                top: 18.0,
                right: 24.0,
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delicious\nfood for you',
                    style: GoogleFonts.robotoFlex(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      height: 1,
                      letterSpacing: 1,
                    ),
                  ),
                  Gap(30),
                  MySearchField(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
