import 'package:flutter/material.dart';
import 'package:food_app/widgets/my_search_field.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List category = [
    'All',
    'Combos',
    'Sliders',
    'Classic',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
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
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Order your favorite food!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Search Field
            const MySearchField(),
            const SizedBox(height: 30),

            // Category List
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 18.0,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      decoration: BoxDecoration(
                        color:
                            index == 0
                                ? Colors.red
                                : Colors.grey[100],
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          category[index],
                          style: TextStyle(
                            color:
                                index == 0
                                    ? Colors.white
                                    : Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
