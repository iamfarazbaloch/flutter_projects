import 'package:flutter/material.dart';
import 'package:food_ui_kit/model/food_model.dart';
import 'package:food_ui_kit/pages/cart_page.dart';
import 'package:food_ui_kit/widgets/my_search_field.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> categories = [
    'Foods',
    'Drinks',
    'Snacks',
    'Sauces',
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icons/menu.png'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/icons/cart.png',
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),

            // Title and search
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
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
                  const Gap(30),
                  const MySearchField(),
                  const Gap(30),
                ],
              ),
            ),

            // Category Selector
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: SizedBox(
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  separatorBuilder:
                      (_, __) => const SizedBox(width: 18),
                  itemBuilder: (context, index) {
                    final isSelected =
                        index == selectedIndex;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.end,
                        children: [
                          Text(
                            categories[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight:
                                  isSelected
                                      ? FontWeight.bold
                                      : FontWeight.w500,
                              color:
                                  isSelected
                                      ? const Color(
                                        0xFFFA4A0C,
                                      )
                                      : Colors.grey[700],
                              letterSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            height: 3,
                            width: 100,
                            decoration: BoxDecoration(
                              color:
                                  isSelected
                                      ? const Color(
                                        0xFFFA4A0C,
                                      )
                                      : Colors.transparent,
                              borderRadius:
                                  BorderRadius.circular(2),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const Gap(60),

            // Horizontal food list with image partly outside
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SizedBox(
                height: 270,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: foods.length,
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 40,
                  ),
                  separatorBuilder:
                      (_, __) => const SizedBox(width: 24),
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    final food = foods[index];
                    return SizedBox(
                      width: 200,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // Card
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.only(
                              top: 60,
                              left: 16,
                              right: 16,
                              bottom: 16,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.end,
                              children: [
                                Text(
                                  food.name,
                                  textAlign:
                                      TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight:
                                        FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Rs ${food.price}',
                                  style: const TextStyle(
                                    color: Color(
                                      0xFFFA4A0C,
                                    ),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Floating Image
                          Positioned(
                            top: -60,
                            left: 20,
                            right: 20,
                            child: Image.asset(
                              food.image,
                              height: 230,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
