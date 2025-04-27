import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Let's Gonuts!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFF7074),
                      fontSize: 28.0,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFFED8DF),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      color: Color(0xFFFF7074),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text('Order your favorite donuts here!'),
                  Gap(40),
                  Text(
                    'Today Offers',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          16.0,
                        ),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Image.asset(
                      'assets/products/strawberry.png',
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Strawberry Wheel',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'These baked strawberry donuts are filled with fresh strawberries.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Gap(10),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end,
                    children: [
                      const Text(
                        '\$20',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration:
                              TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '\$16',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
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
  }
}
