import 'package:flutter/material.dart';
import 'package:food_app/model/shop.dart';
import 'package:food_app/pages/detail_page.dart';
import 'package:food_app/widgets/custom_nav_bar.dart'
    show CustomNavBar;

import 'package:food_app/widgets/my_search_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List category = [
    'All',
    'Combos',
    'Sliders',
    'Classic',
  ];

  void _onNavTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final productList = context.watch<Shop>().product;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onNavTap,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
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
              const SizedBox(height: 6),
              Text(
                'Order your favorite food!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
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
                        left: 10,
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
                          borderRadius:
                              BorderRadius.circular(20),
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
              const SizedBox(height: 20),

              // Product Grid
              Expanded(
                child: GridView.builder(
                  itemCount: productList.length,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        childAspectRatio: 0.75,
                      ),
                  itemBuilder: (context, index) {
                    final product = productList[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => DetailPage(
                                  products: product,
                                ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withAlpha(
                                51,
                              ),
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.vertical(
                                      top: Radius.circular(
                                        16,
                                      ),
                                    ),
                                child: Center(
                                  child: Image.asset(
                                    product.imagePath,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(
                                12,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .start,
                                children: [
                                  Text(
                                    product.title,
                                    style: const TextStyle(
                                      fontWeight:
                                          FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    product.subTitle,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 16,
                                              color:
                                                  Colors
                                                      .amber,
                                            ),
                                            Text(
                                              product.rating
                                                  .toString(),
                                            ),
                                            const Spacer(),
                                            const Icon(
                                              Icons
                                                  .favorite_border_outlined,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
