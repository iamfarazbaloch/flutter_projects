import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_nuts_app/widgets/today_offer.dart';

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
                  const Text(
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
                      color: const Color(0xFFFED8DF),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    child: const Icon(
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
                children: const [
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
            const Gap(20),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  TodayOffer(
                    title: 'Strawberry Wheel',
                    description:
                        'These Baked Strawberry Donuts are filled with fresh strawberries...',
                    price: '\$9.99',
                    imagePath:
                        'assets/products/strawberry.png',
                  ),
                  TodayOffer(
                    title: 'Chocolate Glaze',
                    description:
                        'Delicious chocolate glazed donuts perfect for your sweet tooth!',
                    price: '\$8.49',
                    imagePath:
                        'assets/products/chocolate.png',
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
